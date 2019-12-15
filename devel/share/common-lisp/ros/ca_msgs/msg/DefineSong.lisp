; Auto-generated. Do not edit!


(cl:in-package ca_msgs-msg)


;//! \htmlinclude DefineSong.msg.html

(cl:defclass <DefineSong> (roslisp-msg-protocol:ros-message)
  ((song
    :reader song
    :initarg :song
    :type cl:fixnum
    :initform 0)
   (length
    :reader length
    :initarg :length
    :type cl:fixnum
    :initform 0)
   (notes
    :reader notes
    :initarg :notes
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (durations
    :reader durations
    :initarg :durations
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass DefineSong (<DefineSong>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DefineSong>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DefineSong)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ca_msgs-msg:<DefineSong> is deprecated: use ca_msgs-msg:DefineSong instead.")))

(cl:ensure-generic-function 'song-val :lambda-list '(m))
(cl:defmethod song-val ((m <DefineSong>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ca_msgs-msg:song-val is deprecated.  Use ca_msgs-msg:song instead.")
  (song m))

(cl:ensure-generic-function 'length-val :lambda-list '(m))
(cl:defmethod length-val ((m <DefineSong>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ca_msgs-msg:length-val is deprecated.  Use ca_msgs-msg:length instead.")
  (length m))

(cl:ensure-generic-function 'notes-val :lambda-list '(m))
(cl:defmethod notes-val ((m <DefineSong>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ca_msgs-msg:notes-val is deprecated.  Use ca_msgs-msg:notes instead.")
  (notes m))

(cl:ensure-generic-function 'durations-val :lambda-list '(m))
(cl:defmethod durations-val ((m <DefineSong>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ca_msgs-msg:durations-val is deprecated.  Use ca_msgs-msg:durations instead.")
  (durations m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DefineSong>) ostream)
  "Serializes a message object of type '<DefineSong>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'song)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'length)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'notes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'notes))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'durations))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'durations))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DefineSong>) istream)
  "Deserializes a message object of type '<DefineSong>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'song)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'length)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'notes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'notes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'durations) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'durations)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DefineSong>)))
  "Returns string type for a message object of type '<DefineSong>"
  "ca_msgs/DefineSong")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DefineSong)))
  "Returns string type for a message object of type 'DefineSong"
  "ca_msgs/DefineSong")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DefineSong>)))
  "Returns md5sum for a message object of type '<DefineSong>"
  "ae0ef1f2fad74bf546a9e5f037c27a5d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DefineSong)))
  "Returns md5sum for a message object of type 'DefineSong"
  "ae0ef1f2fad74bf546a9e5f037c27a5d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DefineSong>)))
  "Returns full string definition for message of type '<DefineSong>"
  (cl:format cl:nil "uint8 song            # song number [0-3]~%uint8 length          # song length [1-16]~%uint8[] notes         # notes defined by the MIDI note numbering scheme. Notes outside the range of [31-127] are rest notes.~%float32[] durations   # durations in seconds. Maximum duration is 255/64.~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DefineSong)))
  "Returns full string definition for message of type 'DefineSong"
  (cl:format cl:nil "uint8 song            # song number [0-3]~%uint8 length          # song length [1-16]~%uint8[] notes         # notes defined by the MIDI note numbering scheme. Notes outside the range of [31-127] are rest notes.~%float32[] durations   # durations in seconds. Maximum duration is 255/64.~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DefineSong>))
  (cl:+ 0
     1
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'notes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'durations) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DefineSong>))
  "Converts a ROS message object to a list"
  (cl:list 'DefineSong
    (cl:cons ':song (song msg))
    (cl:cons ':length (length msg))
    (cl:cons ':notes (notes msg))
    (cl:cons ':durations (durations msg))
))
