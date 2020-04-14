is_accepted =
    (candidate.languages.include? 'Ruby') &&
    (candidate.years >= 2 || candidate.github_points>= 500) &&
    ! (candidate.age < 15) || candidate.recently?)