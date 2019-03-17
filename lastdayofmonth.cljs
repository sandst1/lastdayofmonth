(def month-days (array 31 28 31 30 31 30 31 31 30 31 30 31))

(def feb-leap-day 29)

(def today
  { 
    :year  (.getFullYear (js/Date.)), 
    :month (.getMonth (js/Date.)), 
    :day   (.getDate (js/Date.))
  })

(defn february
  [month]
  (if (= month 1) true false)) ; month is 0-11

(defn leap-year
  [year]
  (cond
    (not= (mod year 4) 0) false
    (not= (mod year 100) 0) true
    (= (mod year 400) 0) true
    :else false
  ))

(defn last-day-of-month
  [date]
  (if (and (february (:month date)) 
           (leap-year (:year date)))
    feb-leap-day
    (nth month-days (:month date))))

(println (str "Last day of the month is " (last-day-of-month today)))
