# Working Effectively with Legacy Code - Michael Feathers

### First, add tests, then do your changes

### Adding tests: the Legacy Code dilemma
Before you change code, you should have tests in place. But to put tests in place, you have to change code.
This is the paradox of Legacy Code!

Change as little code as possible to get tests in place.

### Identify Seams to break your code dependencies

Adding tests on the existing code can be challenging.

Hell, it’s usually a nightmare!

That’s because the code was not written to be testable in the first place. 99% of the time, this is a dependency problem: the code you want to test can’t run because it needs something hard to put in the test.

Sometimes it’s a database connection. Sometimes it’s a call to a third-party server. Sometimes it’s a parameter that’s complex to instantiate. Usually, it’s a complex mix of all that.

To test your code, you need to break these dependencies in the tests.

Therefore, you need to identify Seams.

“A Seam is a place to alter program behavior, without changing the code.”

### Unit tests are fast and reliable

People don’t have the same definition of what a “unit” is

In short, your test is not unit if:
- it doesn’t run fast (< 100ms / test)
- it talks to the Infrastructure (e.g. a database, the network, the file system, environment variables…)

### THE SPROUT TECHNIQUE

- Create your code somewhere else.
- Unit test it.
- Identify where you should call that code from the existing code: the insertion point.
- Call your code from the Legacy Code.

### THE WRAP TECHNIQUE

When the change you need to do should happen before or after the existing code, you can also wrap it.

- Rename the old method you want to wrap.
- Create a new method with the same name and signature as the old method.
- Call the old method from the new method.
- Put the new logic before/after the other method call.

### Scratch Technique

Play with the code as much as you want. Extract functions, simplify code, rename variables… Get to know the code. Once you do, revert your changes and start over with proper tests.

### Don’t make your code depend on libraries’ implementation

We use libraries to do the job and save us time. So far so good.

But rarely we take the extra time to wrap these tools behind custom abstractions that we own.


