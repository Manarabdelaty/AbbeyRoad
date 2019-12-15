; Auto-generated. Do not edit!


(cl:in-package ca_msgs-msg)


;//! \htmlinclude PlaySong.msg.html

(cl:defclass <PlaySong> (roslisp-msg-protocol:ros-message)
  ((song
    :reader song
    :initarg :song
    :type cl:fixnum
    :initform 0))
)

(cl:defclass PlaySong (<PlaySong>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlaySong>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlaySong)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ca_msgs-msg:<PlaySong> is deprecated: use ca_msgs-msg:PlaySong instead.")))

(cl:ensure-generic-function 'song-val :lambda-list '(m))
(cl:defmethod song-val ((m <PlaySong>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ca_msgs-msg:song-val is deprecated.  Use ca_msgs-msg:song instead.")
  (song m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlaySong>) ostream)
  "Serializes a message object of type '<PlaySong>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'song)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlaySong>) istream)
  "Deserializes a message object of type '<PlaySong>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'song)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlaySong>)))
  "Returns string type for a message object of type '<PlaySong>"
  "ca_msgs/PlaySong")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlaySong)))
  "Returns string type for a message object of type 'PlaySong"
  "ca_msgs/PlaySong")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlaySong>)))
  "Returns md5sum for a message object of type '<PlaySong>"
  "eb55a5c354f06b6572d1ec46a28b6e6a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlaySong)))
  "Returns md5sum for a message object of type 'PlaySong"
  "eb55a5c354f06b6572d1ec46a28b6e6a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlaySong>)))
  "Returns full string definition for message of type '<PlaySong>"
  (cl:format cl:nil "uint8 song      # song number [0-3]~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlaySong)))
  "Returns full string definition for message of type 'PlaySong"
  (cl:format cl:nil "uint8 song      # song number [0-3]~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlaySong>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlaySong>))
  "Converts a ROS message object to a list"
  (cl:list 'PlaySong
    (cl:cons ':song (song msg))
))
