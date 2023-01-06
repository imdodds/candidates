# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program

def find(id)
  # Your code Here
  candidates.id
end

def experienced?(candidate)
  # Your code Here
  candidate.years_of_experience >= 2
end

def qualified_candidates(candidates)
  # Your code Here
  qualified_list = []

  candidates.each do |candidate|
    if experienced?(candidate) && github_points?(candidate) && ruby_or_python?(candidate) && applied_last_15_days?(candidate) && over_17?(candidate)
      qualified_list.push(candidate)
    end

  qualified_list
end

# More methods will go below

def github_points?(candidate)
  candidate.github_points >= 100
end

def ruby_or_python?(candidate)
  candidate.languages.include?('Ruby') || candidate.languages.include?('Python')
end

def applied_last_15_days(candidate)
  candidate.date_applied <= 15
end

def over_17(candidate)
  candidate.age > 17
end

def ordered_by_qualifications(candidates)
  # Your code Here
  candidates.sort_by { |candidate| [candidate.years_of_experience, candidate.github_points] }
end