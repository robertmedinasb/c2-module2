def my_languages(results)
    results.keys.select {|k| results[k]>=60}.sort_by {|k| -results[k]}
  end
  