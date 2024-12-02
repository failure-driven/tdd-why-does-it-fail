# TDD why does it fail?

```sh
just
just present
```

## Presentations

- ~~RORO Sydney [ROROSyd (July 2024)
  ](https://www.meetup.com/ruby-on-rails-oceania-sydney/events/302014825/)~~
  _was postponed_

## On Even Better Specs

Never been a fan of "betterspecs dot org", so was skeptical around
[https://evenbetterspecs.github.io/](
https://evenbetterspecs.github.io/), but after a read, I am pretty much all in
on this.

**I like their guiding principle**
- tests must be self-contained, not DRY
- tests should follow the Arrange-Act-Assert pattern

also:
- didn't know that `subject` by default is `Class.new`
    - not convinced it's a good thing but happy to accept it
- the request vs controller spec is interesting
    - I think I am OK with controller unit specs, ie everything mocked out and
      request specs are only useful if you have an API - where as if you have a
      full rails App I would say that E2E tests are going to be more useful
- yeah I thought that `require 'rails_helper'` is optional these days and
  should be removed
- OH Wow the are anti `Let`'s !!! yeah I am in 💯%
- no shared examples ✅
- only data you need ✅
- mock external stuff ✅
- not sure I can be convinced to like `described_class`
    - so often I have wanted to search for usage of something like
      `Pilot.most_successful` only to miss it because it is
      `described_class.most_successful`

Also a video worth watching on things like 
> _"make unimportant test code obviously meaningless to the reader"_, and he
> uses a trivial word like "pants" whenever some value is not actually
> important

For example I am a fan of forcing predictible UUIDs in tests where possible
like `11111111-0000-4000-9000-000000000000` or
`22222222-0000-4000-9000-000000000000`

[
    ![RubyConf 2015 - How to Stop Hating your Test Suite by Justin Searls
    ](http://img.youtube.com/vi/VD51AkG8EZw/0.jpg)
](https://youtu.be/VD51AkG8EZw&t=1037s)
