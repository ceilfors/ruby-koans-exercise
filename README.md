# ruby-koans-exercise
Practice exercise from rubykoans.com

# Notes

## nil

> Is it better to use `obj.nil?` or `obj == null`

At a glance obj.nil? looks more readable, and can potentially be overridden. Seems to have better
performance as well: http://stackoverflow.com/a/26677763/2464295!

## arrays

- .. is inclusive, ... is exclusive
- Weird behavior on test_slicing_arrays where some returned values are an empty array,
  while another is nil. More explanation here: http://stackoverflow.com/a/3568281/2464295
- Surprised that `assert_equal [:and, :jelly], array[2..-1]` is true. When I tried to
  create evaluate `(2..-1).to_a` it returns an empty array.


## hashes

- Gotcha, watch out! test_default_value_is_the_same_object!

> Why might you want to use #fetch instead of #[] when accessing hash keys?

When you want hash to raise an error if the key is not available.

> Bonus Question: Why was "expected" broken out into a variable rather than used as a literal?

Found out that ruby's parentheses is optional and the `expected` can be used without a variable when parenthses is used.
 Guessing ruby got confused about block and map literals. Haven't reached the topic about block yet.
 
## strings

- Supports various interesting ways of creating new string
    - Flexible quoting: `%!flexible quotes can handle both ' and " characters!`
    - Here documents: `<<EOS .. EOS`. Text always starts in new line
    - Pattern is created with slashy string: `/regex/`
    
> Ruby programmers tend to favor the shovel operator (<<) over the plus equals operator (+=) when building up strings. Why?

I guess this is down to whether you want to have side effects in our original String or not?
http://stackoverflow.com/a/4684507/2464295
