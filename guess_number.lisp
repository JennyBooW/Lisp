(defparameter *small* 1)
(defparameter *big* 100)

(defun guess-number ()
  (ash (+ *small* *big*) -1)
)

(defun smaller ()
  (setf *big* (1- (guess-number)))
  (guess-number)
)

(defun bigger ()
  (setf *small* (1+ (guess-number)))
  (guess-number)
)

(defun start-over ()
  (setf *small* 1)
  (setf *big* 100)
  (guess-number)
)

(defun user-input () (format t "\nEnter your command (smaller/bigger/start over/exit): ") 
  (let ((input (read-line))) 
    (case input 
      ("smaller" (smaller) (user-input)) 
      ("bigger" (bigger) (user-input)) 
      ("start over" (start-over) (user-input)) 
      ("exit" (format t "Goodbye!")) 
      (t (format t "Invalid command. Try again.") (user-input)) 
    ) 
  ) 
)

(defun start-game () 
(format t "Pick a number between 1 and 100 and I will try to guess it!") 
(user-input)
)

(start-game)