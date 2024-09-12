/*
 * Logical puzzle.
 *
 * Butsie is a brown cat, Cornie is a black cat, Mac is a red cat.
 * Flash, Rover and Spot are dogs. Flash is a spotted dog, Rover
 * is a red dog and Spot is a white dog. Fluffy is a black dog.
 *
 * Tom owns any pet that is either brown or black. Kate owns all
 * non-white dogs, not belonging to Tom.
 *
 * All pets Kate or Tom owns are pedigree animals.
 *
 * Alan owns Mac if Kate does not own Butsie and Spot is not a pedigree
 * animal.
 *
 * Write a Prolog program that answers, which animals do not have an owner.
*/

cat("Butsie").
cat("Cornie").
cat("Mac").
dog("Flash").
dog("Rover").
dog("Spot").
dog("Fluffy").

brown("Butsie").
black("Cornie").
black("Fluffy").
red("Mac").
red("Rover").
white("Spot").
spotted("Flash").

tom(X) :- brown(X); black(X).
kate(X) :- dog(X), \+white(X), \+tom(X).

pedigree(X) :- tom(X); kate(X).

alan("Mac") :- \+kate("Butsie"), \+pedigree("Spot").

no_owner(X) :- (cat(X); dog(X)), \+kate(X), \+tom(X), \+alan(X).

/*
 * Print "no_owner(X)" to get an answer
*/