---
title: Resources
description: Training, practice and preparation makes perfect
featured_image: /images/YAW02249.webp
featured_image_alignment: center
type: page
weight: 30
menu: main
---
# Before the contest
## Study material
There are several books written in prepartion for competive programming. Some examples are:
 * [Competitive Programming 4th Edition](https://cpbook.net/) ([2nd edition downloadable for free](https://cpbook.net/details?cp=2))
 * [Programming Challenges: The Programming Contest Training Manual](https://books.google.nl/books/about/Programming_Challenges.html)
 * [Guide to Competitive Programming: Learning and Improving Algorithms Through Contests](https://books.google.nl/books?id=3JbiDwAAQBAJ)

## Practice past problems
To prepare for the contest you can find an overview of previous contests in [the CHipCie problem Archive](/archive),
of which we highlighted one [sample problem](/sample).
You can test your solutions to problems on [open Kattis](https://open.kattis.com/) to see if it's correct.
You can submit problems or create/join an online contest with different types of problems.
An overview of the previous years problems available on open Kattis can be found [here](https://open.kattis.com/problem-sources).

## Organise your team
Competing as a team is harder than competing alone. You only have 1 computer and 3 people eager to solve problems.
You want to spend time effective to focus on the problems, not discussing who can use the computer of solve which problem.
Unfortunately this still happens, even in teams that make it to the world finals.

Discuss with your team which roles each of you has. For example, at the start of the contest:
 * Will all team members start reading the problem set from the start? You can also have someone start from the back or the middle.
 * Who uses to computer to create some templates?
 * Do you read the full set or start solving the first problem you think you can solve?

Other situations that can occur during the contest:
 * What happens if a solution is submitted? You can wait for the result or print out the code and start on the next problem.
 * What happens if the solution is incorrect? Debug the printout or work on debug on the computer?
 * Which problems get priority on the computer?

# During the Contest

## Team Contest Reference (TCR)
Starting from the BAPC, you are no longer allowed to bring all the documentation. Instead you can bring three identical
copies of a Team Contest Reference (TCR). The TCR contains up to 25 single-sided (or 12 double-sided) A4 pages reference
material. You are free to include everything you find your team might need during the contest, such as code listings,
formulas, theorems (or the less commonly used motivational pictures, crosswords or a colouring page 😉️).

As a starting point, you can look at public TCRs from other teams like:
 * [TU Delft template](/resources/tcr-template.zip) ([pdf](/resources/tcr.pdf))
 * [Does god play Tetris](https://github.com/alexjbest/icpc-tcr/blob/master/teamref.pdf)
 * [Team hacKIT](https://github.com/niklasb/tcr/blob/master/tcr.pdf)
 * [Omogen Heap](https://github.com/kth-competitive-programming/kactl/blob/main/kactl.pdf)

## Test Session
The test session is not won by winning the scoreboard, but it can win you the main contest.
The goal of the test session is to get familiar the contest environment. Try to test the following during the test session,
so you won’t have to lose time on with it during the real contest.
 * Find your team's workspace
 * How is the start of the contest announced
 * Try all editors, languages and compilers you *might* use during the contest
 * Try the aliases that run with the correct flags
 * Locate where the example input and output files are
 * Locate where the documentation for your languages is available
 * Try printing from IDE, command line and DOMjudge
 * Check whether command-line submit client is available or submission goes through the browser
 * Try submitting all types of results in DOMJudge (check in the manual for all variants)
   - Correct (also known as Accepted, AC)
   - Wrong Answer (WA)
   - Run Time Error (RTE)
   - Time Limit Exceeded (TLE)
   - Compiler Error
 * Send a clarification request
 * Read general clarifications and answers to clarification requests

Any problems or questions you encounter, ask either the runners, in a clarification request or to your coach.

## Understanding the problem format
The problems in a contest are formatted in a standard way: they have a story to provide the context, followed by a technical specification of the input and output.
You don't have to check whether the input is valid,
the input will always exactly follow the specifications
without extra spaces or newlines.
Be sure to follow the output specification.
Some contests allow for minor extra white spaces in the output to be ignored,
but not all contests allow this.

Problems with real-valued output generally only require that your output is correct up to a certain either relative or absolute error.
For example, if the problem statement requests a relative or absolute error of at most 10{{< sup "−6">}}, this means that:

* If the correct answer is `0.005`, any answer between `0.004999` and `0.005001` will be accepted.
* If the correct answer is `500`, any answer between `499.9995` and `500.0005` will be accepted.

In these cases, any reasonable format for floating point numbers is acceptable. For instance, `17.000000`, `0.17e2`, and `17` are accepted ways of formatting the number `17`.
Note that this won't be accepted if the output specifies an integer, then only `17` is accepted.

## Understanding how the solutions are run
When you submit a problem to the judging system, your problem is automatically judged against test cases. The cases include both
the sample cases given in your problem statement, and secret cases that will cover the extreme cases and corner cases.

For running and compiling against the testcases you have a single core available and limited memory. If you try to
circumvent this with `fork` (C/C++) or creating `Threads` (Java/Kotlin), this will be a cause for disqualification.

There is a time limit given on each problem statement. Each testcase has to finish in this time limit. In this time includes
running the program, starting the JVM or interpreter (if applicable), parsing the input and outputting your answer.

If you are afraid that you solution runs within the time limit, you can generate
a maximum input test case and measure the runtime on your machine with the [`time`](https://www.man7.org/linux/man-pages/man1/time.1.html) command.

The organisation of a contest tries to make the machines for judging and contestants equal, but this is not always the case.
Therefore, the timing on your machine is no guarantee for the timing on the judge host.

## More hints from the jury
The BAPC jury have provided advice and hints on understanding the problem format at [jury.bapc.eu/hints](https://jury.bapc.eu/hints/).
This page also contains general information on how submissions are judged during a contest,
as well as tips about interactive problems.

## General tips
 * Read the output specification carefully!
 * Don't forget to remove debug prints!
 * When integers get large, use 64-bit!
 * Do not do string concatenation with + in a loop!
 * Calling functions is more expensive than you might think!
 * For Java, `BufferedReader` is faster than `Scanner`!
 * Don't forget to eat and drink. Programming contest is a sport, and you need to be energised and focussed for 5 hours.
