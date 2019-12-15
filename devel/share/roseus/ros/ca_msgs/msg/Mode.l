;; Auto-generated. Do not edit!


(when (boundp 'ca_msgs::Mode)
  (if (not (find-package "CA_MSGS"))
    (make-package "CA_MSGS"))
  (shadow 'Mode (find-package "CA_MSGS")))
(unless (find-package "CA_MSGS::MODE")
  (make-package "CA_MSGS::MODE"))

(in-package "ROS")
;;//! \htmlinclude Mode.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*MODE_OFF*" (find-package "CA_MSGS::MODE"))
(shadow '*MODE_OFF* (find-package "CA_MSGS::MODE"))
(defconstant ca_msgs::Mode::*MODE_OFF* 0)
(intern "*MODE_PASSIVE*" (find-package "CA_MSGS::MODE"))
(shadow '*MODE_PASSIVE* (find-package "CA_MSGS::MODE"))
(defconstant ca_msgs::Mode::*MODE_PASSIVE* 1)
(intern "*MODE_SAFE*" (find-package "CA_MSGS::MODE"))
(shadow '*MODE_SAFE* (find-package "CA_MSGS::MODE"))
(defconstant ca_msgs::Mode::*MODE_SAFE* 2)
(intern "*MODE_FULL*" (find-package "CA_MSGS::MODE"))
(shadow '*MODE_FULL* (find-package "CA_MSGS::MODE"))
(defconstant ca_msgs::Mode::*MODE_FULL* 3)
(defclass ca_msgs::Mode
  :super ros::object
  :slots (_header _mode ))

(defmethod ca_msgs::Mode
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:mode __mode) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _mode (round __mode))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _mode
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _mode
       (write-byte _mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ca_msgs::Mode :md5sum-) "b4faf4b68b6555d4656417971bee31a0")
(setf (get ca_msgs::Mode :datatype-) "ca_msgs/Mode")
(setf (get ca_msgs::Mode :definition-)
      "uint8 MODE_OFF=0
uint8 MODE_PASSIVE=1
uint8 MODE_SAFE=2
uint8 MODE_FULL=3

Header header
uint8 mode

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

")



(provide :ca_msgs/Mode "b4faf4b68b6555d4656417971bee31a0")


