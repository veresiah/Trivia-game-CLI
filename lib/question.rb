class Question
    attr_accessor :category 
    attr_reader :difficulty, :question, :correct_answer, :incorrect_answer, :answers
    
    @@all =[] 
    
    def initialize(category, difficulty, question, correct_answer, incorrect_answer)
        @difficulty = difficulty
        @question = question
        @correct_answer = correct_answer 
        @incorrect_answer = incorrect_answer
        @answers = []
        @answers << correct_answer
        @answers << incorrect_answer
        save
    end 

    def self.all
        @@all 
    end 

    def self.clear
        self.all.clear
    end 

    def save
        @@all << self
    end 

  



        