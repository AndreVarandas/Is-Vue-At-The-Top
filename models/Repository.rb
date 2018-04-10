class Repository
    attr_accessor :stargazers_count, :subscribers_count, :forks_count

    def initialize(stargazers_count, subscribers_count, forks_count)
        @stargazers_count = stargazers_count
        @subscribers_count = subscribers_count
        @forks_count = forks_count
    end
  end