require_relative "../config/environment.rb"
class API
    def self.categories 
        resp = RestClient.get('https://opentdb.com/api_category.php')
        hash = JSON.parse(resp.body,symbolize_names:true)
        categories_array = hash[:trivia_categories]
        categories_array.each do |c|
            id = c[:id]
            name = c[:name]
            Category.new(id, name)
        end 
    end

    def self.question
        resp = RestClient.get('https://opentdb.com/api.php?amount=1&category=#{category.id}&type=boolean')
        hash = JSON.parse(resp.body,symbolize_names:true)
        quest_array = hash[:results]
        category = question_array[0][:category] 
        difficulty = question_array[0][:difficulty]
        question = question_array[0][:question]
        correct_answer = question_array[0][:correct_answer]
        incorrect_answer = question_array[0][incorrect_answers]
        Question.new(category, difficulty, question, correct_answer, incorrect_answer)
    end 
end 