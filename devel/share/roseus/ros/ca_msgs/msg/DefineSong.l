;; Auto-generated. Do not edit!


(when (boundp 'ca_msgs::DefineSong)
  (if (not (find-package "CA_MSGS"))
    (make-package "CA_MSGS"))
  (shadow 'DefineSong (find-package "CA_MSGS")))
(unless (find-package "CA_MSGS::DEFINESONG")
  (make-package "CA_MSGS::DEFINESONG"))

(in-package "ROS")
;;//! \htmlinclude DefineSong.msg.html


(defclass ca_msgs::DefineSong
  :super ros::object
  :slots (_song _length _notes _durations ))

(defmethod ca_msgs::DefineSong
  (:init
   (&key
    ((:song __song) 0)
    ((:length __length) 0)
    ((:notes __notes) (make-array 0 :initial-element 0 :element-type :char))
    ((:durations __durations) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _song (round __song))
   (setq _length (round __length))
   (setq _notes __notes)
   (setq _durations __durations)
   self)
  (:song
   (&optional __song)
   (if __song (setq _song __song)) _song)
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:notes
   (&optional __notes)
   (if __notes (setq _notes __notes)) _notes)
  (:durations
   (&optional __durations)
   (if __durations (setq _durations __durations)) _durations)
  (:serialization-length
   ()
   (+
    ;; uint8 _song
    1
    ;; uint8 _length
    1
    ;; uint8[] _notes
    (* 1    (length _notes)) 4
    ;; float32[] _durations
    (* 4    (length _durations)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _song
       (write-byte _song s)
     ;; uint8 _length
       (write-byte _length s)
     ;; uint8[] _notes
     (write-long (length _notes) s)
     (princ _notes s)
     ;; float32[] _durations
     (write-long (length _durations) s)
     (dotimes (i (length _durations))
       (sys::poke (elt _durations i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _song
     (setq _song (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _length
     (setq _length (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8[] _notes
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _notes (make-array n :element-type :char))
     (replace _notes buf :start2 ptr-) (incf ptr- n))
   ;; float32[] _durations
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _durations (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _durations i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get ca_msgs::DefineSong :md5sum-) "ae0ef1f2fad74bf546a9e5f037c27a5d")
(setf (get ca_msgs::DefineSong :datatype-) "ca_msgs/DefineSong")
(setf (get ca_msgs::DefineSong :definition-)
      "uint8 song            # song number [0-3]
uint8 length          # song length [1-16]
uint8[] notes         # notes defined by the MIDI note numbering scheme. Notes outside the range of [31-127] are rest notes.
float32[] durations   # durations in seconds. Maximum duration is 255/64.

")



(provide :ca_msgs/DefineSong "ae0ef1f2fad74bf546a9e5f037c27a5d")


