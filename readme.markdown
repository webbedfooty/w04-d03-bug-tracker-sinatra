# Database Starter: Bug Tracker

We're exploring a new island, and we want to keep track of all the weird and
interesting insects we find.

Here are our models:

+ Researchers - These are the grad students who find insects
+ Insects - These are the insects themselves
+ Papers - A researcher may write many papers, each about an insect
+ Locations - This is where an insect might appear

## Setup Instructions

1. Clone the repository
2. `rake db:create`
3. `rake db:migrate`
4. Run `main.rb`

## Assignment Instructions

### Part A

Finish our `new`, `create`, `index`, `show` for `Location` and `Researcher`
models. This should follow the existing structure exactly and the routes should
all be jumbled in `main.rb` (for some value of "jumbled")

### Part B

See if you can figure out how to render an `edit` form with an Insect (etc.)'s
attributes pre-filled. As a hint, try the new form, look at it in an inspector,
and see what happens when you type stuff in.

### Part C

Try another application. Set it up from scratch. Make models. Etc.

### Part D

Learn where Sinatra expects CSS files to go. Consider a CSS tutorial
(codecademy, etc.) and work with that.
