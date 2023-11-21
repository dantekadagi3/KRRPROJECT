% Facts about early blight symptoms
symptom(potato, yellow_spots_on_leaves).
symptom(potato, brown_spots_on_leaves).
symptom(potato, concentric_rings_on_leaves).
symptom(potato, dieback_from_leaf_tips).

% Facts about late blight symptoms
symptom(potato, dark_spots_on_leaves).
symptom(potato, white_mildew_on_leaves).
symptom(potato, halo_around_leaves).
symptom(potato, irregular_shaped_lesions_on_leaves).
symptom(potato, wilting_leaves).
symptom(potato, black_fruit).
symptom(potato, drooping_leaves).
symptom(potato, dieback_from_stem_tips).
% Rules to identify early blight
early_blight :-
  symptom(potato, yellow_leaves),
  symptom(potato, brown_spots_on_leaves).

early_blight :-
  symptom(potato, concentric_rings_on_leaves).

% Rule to identify late blight
late_blight :-
  symptom(potato, dark_spots_on_leaves),
  symptom(potato, white_mildew_on_leaves).

% Forward chaining
%identify_early_blight :-
 % early_blight,
 % writeln('Potato plant is suffering from early blight.').

% Backward chaining
identify_late_blight :-
  writeln('Does the plant have dark spots on leaves? (yes/no)'),
  read(Response1),
  writeln('Does the plant have white mildew on leaves? (yes/no)'),
  read(Response2),
  writeln('Does the plant have halo round leaves? (yes/no)'),
  read(Response3),
  writeln('Does the plant have irregular shaped lesions on leaves? (yes/no)'),
  read(Response4),
  writeln('Does the plant have wilting leaves? (yes/no)'),
  read(Response5),
  writeln('Does the plant have black fruit? (yes/no)'),
  read(Response6),
  writeln('Does the plant have drooping leaves? (yes/no)'),
  read(Response7),
  writeln('Does the plant have dieback from stem tips? (yes/no)'),
  read(Response8),
  (Response1 == yes; Response2 == yes; Response3 == yes; Response4 == yes; Response5 == yes; Response6 == yes; Response7 == yes; Response8 == yes -> writeln('Potato plant is suffering from late blight.');
   writeln('Potato plant is not suffering from late blight.')).

% Main predicate to identify blight
identify_early_blight :-
  writeln('Does the plant have yellow leaves? (yes/no)'),
  read(Response9),
  writeln('Does the plant have brown spots on leaves? (yes/no)'),
  read(Response10),
  writeln('Does the plant have concentric rings on leaves? (yes/no)'),
  read(Response11),
  writeln('Does the plant have dieback from stem tips? (yes/no)'),
  read(Response12),

  (Response9 == yes; Response10 == yes; Response11 == yes; Response12==yes -> writeln('potato plant is suffering from early blight');
   writeln('Potato plant is not suffering from early blight.')).
