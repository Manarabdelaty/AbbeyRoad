;; Auto-generated. Do not edit!


(when (boundp 'ca_msgs::Bumper)
  (if (not (find-package "CA_MSGS"))
    (make-package "CA_MSGS"))
  (shadow 'Bumper (find-package "CA_MSGS")))
(unless (find-package "CA_MSGS::BUMPER")
  (make-package "CA_MSGS::BUMPER"))

(in-package "ROS")
;;//! \htmlinclude Bumper.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ca_msgs::Bumper
  :super ros::object
  :slots (_header _is_left_pressed _is_right_pressed _is_light_left _is_light_front_left _is_light_center_left _is_light_center_right _is_light_front_right _is_light_right _light_signal_left _light_signal_front_left _light_signal_center_left _light_signal_center_right _light_signal_front_right _light_signal_right ))

(defmethod ca_msgs::Bumper
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:is_left_pressed __is_left_pressed) nil)
    ((:is_right_pressed __is_right_pressed) nil)
    ((:is_light_left __is_light_left) nil)
    ((:is_light_front_left __is_light_front_left) nil)
    ((:is_light_center_left __is_light_center_left) nil)
    ((:is_light_center_right __is_light_center_right) nil)
    ((:is_light_front_right __is_light_front_right) nil)
    ((:is_light_right __is_light_right) nil)
    ((:light_signal_left __light_signal_left) 0)
    ((:light_signal_front_left __light_signal_front_left) 0)
    ((:light_signal_center_left __light_signal_center_left) 0)
    ((:light_signal_center_right __light_signal_center_right) 0)
    ((:light_signal_front_right __light_signal_front_right) 0)
    ((:light_signal_right __light_signal_right) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _is_left_pressed __is_left_pressed)
   (setq _is_right_pressed __is_right_pressed)
   (setq _is_light_left __is_light_left)
   (setq _is_light_front_left __is_light_front_left)
   (setq _is_light_center_left __is_light_center_left)
   (setq _is_light_center_right __is_light_center_right)
   (setq _is_light_front_right __is_light_front_right)
   (setq _is_light_right __is_light_right)
   (setq _light_signal_left (round __light_signal_left))
   (setq _light_signal_front_left (round __light_signal_front_left))
   (setq _light_signal_center_left (round __light_signal_center_left))
   (setq _light_signal_center_right (round __light_signal_center_right))
   (setq _light_signal_front_right (round __light_signal_front_right))
   (setq _light_signal_right (round __light_signal_right))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:is_left_pressed
   (&optional __is_left_pressed)
   (if __is_left_pressed (setq _is_left_pressed __is_left_pressed)) _is_left_pressed)
  (:is_right_pressed
   (&optional __is_right_pressed)
   (if __is_right_pressed (setq _is_right_pressed __is_right_pressed)) _is_right_pressed)
  (:is_light_left
   (&optional __is_light_left)
   (if __is_light_left (setq _is_light_left __is_light_left)) _is_light_left)
  (:is_light_front_left
   (&optional __is_light_front_left)
   (if __is_light_front_left (setq _is_light_front_left __is_light_front_left)) _is_light_front_left)
  (:is_light_center_left
   (&optional __is_light_center_left)
   (if __is_light_center_left (setq _is_light_center_left __is_light_center_left)) _is_light_center_left)
  (:is_light_center_right
   (&optional __is_light_center_right)
   (if __is_light_center_right (setq _is_light_center_right __is_light_center_right)) _is_light_center_right)
  (:is_light_front_right
   (&optional __is_light_front_right)
   (if __is_light_front_right (setq _is_light_front_right __is_light_front_right)) _is_light_front_right)
  (:is_light_right
   (&optional __is_light_right)
   (if __is_light_right (setq _is_light_right __is_light_right)) _is_light_right)
  (:light_signal_left
   (&optional __light_signal_left)
   (if __light_signal_left (setq _light_signal_left __light_signal_left)) _light_signal_left)
  (:light_signal_front_left
   (&optional __light_signal_front_left)
   (if __light_signal_front_left (setq _light_signal_front_left __light_signal_front_left)) _light_signal_front_left)
  (:light_signal_center_left
   (&optional __light_signal_center_left)
   (if __light_signal_center_left (setq _light_signal_center_left __light_signal_center_left)) _light_signal_center_left)
  (:light_signal_center_right
   (&optional __light_signal_center_right)
   (if __light_signal_center_right (setq _light_signal_center_right __light_signal_center_right)) _light_signal_center_right)
  (:light_signal_front_right
   (&optional __light_signal_front_right)
   (if __light_signal_front_right (setq _light_signal_front_right __light_signal_front_right)) _light_signal_front_right)
  (:light_signal_right
   (&optional __light_signal_right)
   (if __light_signal_right (setq _light_signal_right __light_signal_right)) _light_signal_right)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _is_left_pressed
    1
    ;; bool _is_right_pressed
    1
    ;; bool _is_light_left
    1
    ;; bool _is_light_front_left
    1
    ;; bool _is_light_center_left
    1
    ;; bool _is_light_center_right
    1
    ;; bool _is_light_front_right
    1
    ;; bool _is_light_right
    1
    ;; uint16 _light_signal_left
    2
    ;; uint16 _light_signal_front_left
    2
    ;; uint16 _light_signal_center_left
    2
    ;; uint16 _light_signal_center_right
    2
    ;; uint16 _light_signal_front_right
    2
    ;; uint16 _light_signal_right
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _is_left_pressed
       (if _is_left_pressed (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_right_pressed
       (if _is_right_pressed (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_light_left
       (if _is_light_left (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_light_front_left
       (if _is_light_front_left (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_light_center_left
       (if _is_light_center_left (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_light_center_right
       (if _is_light_center_right (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_light_front_right
       (if _is_light_front_right (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_light_right
       (if _is_light_right (write-byte -1 s) (write-byte 0 s))
     ;; uint16 _light_signal_left
       (write-word _light_signal_left s)
     ;; uint16 _light_signal_front_left
       (write-word _light_signal_front_left s)
     ;; uint16 _light_signal_center_left
       (write-word _light_signal_center_left s)
     ;; uint16 _light_signal_center_right
       (write-word _light_signal_center_right s)
     ;; uint16 _light_signal_front_right
       (write-word _light_signal_front_right s)
     ;; uint16 _light_signal_right
       (write-word _light_signal_right s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _is_left_pressed
     (setq _is_left_pressed (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_right_pressed
     (setq _is_right_pressed (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_light_left
     (setq _is_light_left (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_light_front_left
     (setq _is_light_front_left (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_light_center_left
     (setq _is_light_center_left (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_light_center_right
     (setq _is_light_center_right (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_light_front_right
     (setq _is_light_front_right (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_light_right
     (setq _is_light_right (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint16 _light_signal_left
     (setq _light_signal_left (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _light_signal_front_left
     (setq _light_signal_front_left (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _light_signal_center_left
     (setq _light_signal_center_left (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _light_signal_center_right
     (setq _light_signal_center_right (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _light_signal_front_right
     (setq _light_signal_front_right (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _light_signal_right
     (setq _light_signal_right (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get ca_msgs::Bumper :md5sum-) "18fe5b1d31e6a8db180b924157ac665e")
(setf (get ca_msgs::Bumper :datatype-) "ca_msgs/Bumper")
(setf (get ca_msgs::Bumper :definition-)
      "Header header

# Contact sensors
bool is_left_pressed
bool is_right_pressed

# Bumper light sensors (Create 2 only) in order from left to right
# Value = true if an obstacle detected
bool is_light_left
bool is_light_front_left
bool is_light_center_left
bool is_light_center_right
bool is_light_front_right
bool is_light_right

# Raw light sensor signals
# Values in range [0, 4095]
uint16 light_signal_left
uint16 light_signal_front_left
uint16 light_signal_center_left
uint16 light_signal_center_right
uint16 light_signal_front_right
uint16 light_signal_right

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



(provide :ca_msgs/Bumper "18fe5b1d31e6a8db180b924157ac665e")


