# Database Starter: Bug Tracker

We're exploring a new island, and we want to keep track of all the weird and
interesting insects we find.

Here's what we've got in terms of attributes for our insects:

+ *name* (string)
+ *seen_by* (string)
+ *location* (string)
+ *description* (string)

Thus, we can make a new bug object like so:

```ruby
i = Insect.new( name: "Furry Mantis",
                seen_by: "Andrew",
                location: "In a scary cave",
                description: "Furry and sort of dangerous looking, about 7 inches long. Winged"
              )
```

The problem, though, is that if we want our logger program to keep working, we
need to keep it up and running at all times. We don't have a good way of saving
our insects so we don't have to either re-enter them each time (tedious) or keep
our computer running at all times (inconvenient).

Thus, we need our information to *persist* in a database of some sort.
