(def month-days (array 31 28 31 30 31 30 31 31 30 31 30 31))

(def today
  { 
    :year  (.getFullYear (js/Date.)), 
    :month (.getMonth (js/Date.)), 
    :day   (.getDate (js/Date.))
  })

(defn last-day-of-month
  [date]
  (println (:year date)))



(last-day-of-month today)