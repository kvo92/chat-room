class User < ApplicationRecord
    has_many :messages
    validates_uniqueness_of :username

    def self.generate
        adjectives = ['Ancient', 'Broken', 'Creative', 'Dangerous', 'Effective', 'Flying', 'Gilded']
        nouns  = ['Highway', 'Bird', 'Angel', 'Chopsticks', 'Master']
        number = rand.to_s[2..6]
        username = "#{adjectives.sample}-#{nouns.sample}-#{number}"
        create(username: username)
    end

end
