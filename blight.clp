(deftemplate plant
  (slot name)
  (multislot symptoms))

(deffacts plant-symptoms
  (plant (name plant1) (symptoms small_dark_brown_spots yellow_halo_spots spots_on_stems_fruit))
  (plant (name plant2) (symptoms large_irregular_shaped_lesions))
  (plant (name plant3) (symptoms brown_black_lesions))
  (plant (name plant4) (symptoms white_fuzzy_growth))
  (plant (name plant5) (symptoms green)))

(defrule early-blight
  (plant (name ?plant) (symptoms $?symptoms))
  (and (member small_dark_brown_spots ?symptoms)
       (member yellow_halo_spots ?symptoms)
       (member spots_on_stems_fruit ?symptoms))
=>
  (printout t "Plant " ?plant " has early blight." crlf))

(defrule late-blight
  (plant (name ?plant) (symptoms $?symptoms))
  (and (member large_irregular_shaped_lesions ?symptoms)
       (member brown_black_lesions ?symptoms)
       (member white_fuzzy_growth ?symptoms))
=>
  (printout t "Plant " ?plant " has late blight." crlf))

(defrule no-blight
  (plant (name ?plant) (symptoms $?symptoms))
  (not (member small_dark_brown_spots ?symptoms))
  (not (member yellow_halo_spots ?symptoms))
  (not (member spots_on_stems_fruit ?symptoms))
  (not (member large_irregular_shaped_lesions ?symptoms))
  (not (member brown_black_lesions ?symptoms))
  (not (member white_fuzzy_growth ?symptoms))
=>
  (printout t "Plant " ?plant " does not have early or late blight." crlf))
