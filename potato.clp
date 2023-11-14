(deftemplate plant
  (slot leaf-spots (type SYMBOL) (allowed-values small-dark-dry large-water-soaked))
  (slot leaf-spot-pattern (type SYMBOL) (allowed-values target-like irregular))
  (slot affected-leaves (type SYMBOL) (allowed-values lower-leaves all-leaves))
  (slot stem-spots (type SYMBOL) (allowed-values dark-brown-to-black none))
  (slot disease (type SYMBOL) (allowed-values early-blight late-blight)))
  
  
  (deffacts plant-observations
  (plant (leaf-spots small-dark-dry)
         (leaf-spot-pattern target-like)
         (affected-leaves lower-leaves)
         (stem-spots dark-brown-to-black)))


(defrule diagnose-early-blight
  (plant (leaf-spots small-dark-dry)
         (leaf-spot-pattern target-like)
         (affected-leaves lower-leaves)
         (stem-spots dark-brown-to-black))
  =>
  (assert (plant (disease early-blight))))

(defrule diagnose-late-blight
  (plant (leaf-spots large-water-soaked)
         (leaf-spot-pattern irregular)
         (affected-leaves all-leaves)
         (stem-spots none))
  =>
  (assert (plant (disease late-blight))))

(defrule print-diagnosis
  (plant (disease ?disease))
  =>
  (printout t "Diagnosis: " ?disease crlf))

