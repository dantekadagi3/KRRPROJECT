% Define symptoms of blights
has_symptom(early_blight, [yellow_spots_leaves, brown_spots_leaves, dieback_from_leaf_tips]).
has_symptom(late_blight, [halo_around_leaves, irregular_shaped_lesions_on_leaves, wilting_leaves, black_fruit, gray_fruit, rotten_fruit, wilting_stem, drooping_leaves, dieback_from_stem_tips, mushy_fruits, soft_fruits]).

% Define symptoms of plants
symptom(plant1, yellow_spots_leaves).
symptom(plant2, black_fruit).

% Rules
blight_symptom(potato, Symptoms) :-
    has_symptom(Blight, Symptoms),
    has_symptom(Blight, BlightSymptoms),
    subset(Symptoms, BlightSymptoms).

infected(potato, Blight) :-
    symptom(potato, Symptoms),
    blight_symptom(potato, Symptoms),
    Blight = early_blight.

infected(potato, Blight) :-
    symptom(potato, Symptoms),
    blight_symptom(potato, Symptoms),
    Blight = late_blight.
