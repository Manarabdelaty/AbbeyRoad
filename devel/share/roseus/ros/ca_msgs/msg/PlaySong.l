;; Auto-generated. Do not edit!


(when (boundp 'ca_msgs::PlaySong)
  (if (not (find-package "CA_MSGS"))
    (make-package "CA_MSGS"))
  (shadow 'PlaySong (find-package "CA_MSGS")))
(unless (find-package "CA_MSGS::PLAYSONG")
  (make-package "CA_MSGS::PLAYSONG"))

(in-package "ROS")
;;//! \htmlinclude PlaySong.msg.html


(defclass ca_msgs::PlaySong
  :super ros::object
  :slots (_song ))

(defmethod ca_msgs::PlaySong
  (:init
   (&key
    ((:song __song) 0)
    )
   (send-super :init)
   (setq _song (round __song))
   self)
  (:song
   (&optional __song)
   (if __song (setq _song __song)) _song)
  (:serialization-length
   ()
   (+
    ;; uint8 _song
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _song
       (write-byte _song s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _song
     (setq _song (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ca_msgs::PlaySong :md5sum-) "eb55a5c354f06b6572d1ec46a28b6e6a")
(setf (get ca_msgs::PlaySong :datatype-) "ca_msgs/PlaySong")
(setf (get ca_msgs::PlaySong :definition-)
      "uint8 song      # song number [0-3]

")



(provide :ca_msgs/PlaySong "eb55a5c354f06b6572d1ec46a28b6e6a")


