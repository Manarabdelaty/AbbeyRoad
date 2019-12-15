#include <ros/ros.h>
#include <move_base_msgs/MoveBaseAction.h>
#include <actionlib/client/simple_action_client.h>
#include "geometry_msgs/PoseStamped.h"

/** function declarations **/
bool moveToGoal(double xGoal, double yGoal);
char choose();

/* Nav Goal Message Callback*/
void navGoalCallback(const geometry_msgs::PoseStamped::ConstPtr& msg);


/** declare the coordinates of interest **/
double xShalan = 19.526; 
double yShalan = 15.172;

bool goalReached = false;


int main(int argc, char** argv){
   ros::init(argc, argv, "map_navigation_node");
   ros::NodeHandle n;
   ros::spinOnce();
 

  //goalReached = moveToGoal(xShalan, yShalan);

   return 0;
}

bool moveToGoal(double xGoal, double yGoal){

   //define a client for to send goal requests to the move_base server through a SimpleActionClient
   actionlib::SimpleActionClient<move_base_msgs::MoveBaseAction> ac("move_base", true);

   //wait for the action server to come up
   while(!ac.waitForServer(ros::Duration(5.0))){
      ROS_INFO("Waiting for the move_base action server to come up");
   }

   move_base_msgs::MoveBaseGoal goal;

   //set up the frame parameters
   goal.target_pose.header.frame_id = "map";
   goal.target_pose.header.stamp = ros::Time::now();

   /* moving towards the goal*/

   goal.target_pose.pose.position.x =  xGoal;
   goal.target_pose.pose.position.y =  yGoal;
   goal.target_pose.pose.position.z =  0.0;
   goal.target_pose.pose.orientation.x = 0.0;
   goal.target_pose.pose.orientation.y = 0.0;
   goal.target_pose.pose.orientation.z = 0.0;
   goal.target_pose.pose.orientation.w = 1.0;

   ROS_INFO("Sending goal location ...");
   ac.sendGoal(goal);

   ac.waitForResult();

   if(ac.getState() == actionlib::SimpleClientGoalState::SUCCEEDED){
      ROS_INFO("You have reached the destination");
      return true;
   }
   else{
      ROS_INFO("The robot failed to reach the destination");
      return false;
   }

}


void navGoalCallback(const geometry_msgs::PoseStamped::ConstPtr& msg){
	ROS_INFO("Position-> x: [%f], y: [%f], z: [%f]",
        	msg->pose.position.point.x,
		msg->pose.position.point.y,
        	msg->pose.position.point.z);
      
       goalReached = moveToGoal(msg->pose.position.point.x, msg->pose.position.point.y); 

}
