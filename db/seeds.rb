# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

quiz = Quiz.create!(title: "Simple English Quiz", description: "Test your basic English knowledge", time_limit: 20)

questions = [
  {
    content: "Which word is a noun?",
    options: [
      { content: "quickly", correct: false },
      { content: "beautiful", correct: false },
      { content: "happiness", correct: true },
      { content: "run", correct: false }
    ]
  },
  {
    content: "Which is the correct past tense of 'go'?",
    options: [
      { content: "goed", correct: false },
      { content: "went", correct: true },
      { content: "gone", correct: false },
      { content: "going", correct: false }
    ]
  },
  {
    content: "Which word is a verb?",
    options: [
      { content: "teacher", correct: false },
      { content: "run", correct: true },
      { content: "book", correct: false },
      { content: "happiness", correct: false }
    ]
  },
  {
    content: "Choose the correct spelling:",
    options: [
      { content: "recieve", correct: false },
      { content: "receive", correct: true },
      { content: "receeve", correct: false },
      { content: "receve", correct: false }
    ]
  },
  {
    content: "What is the opposite of 'hot'?",
    options: [
      { content: "cold", correct: true },
      { content: "warm", correct: false },
      { content: "cool", correct: false },
      { content: "heat", correct: false }
    ]
  },
  {
    content: "Which is a question word?",
    options: [
      { content: "where", correct: true },
      { content: "run", correct: false },
      { content: "blue", correct: false },
      { content: "happy", correct: false }
    ]
  },
  {
    content: "Which sentence is correct?",
    options: [
      { content: "She are happy.", correct: false },
      { content: "She is happy.", correct: true },
      { content: "She am happy.", correct: false },
      { content: "She be happy.", correct: false }
    ]
  },
  {
    content: "What is the plural of 'child'?",
    options: [
      { content: "childs", correct: false },
      { content: "children", correct: true },
      { content: "childes", correct: false },
      { content: "childen", correct: false }
    ]
  },
  {
    content: "Which is an adjective?",
    options: [
      { content: "quickly", correct: false },
      { content: "beauty", correct: false },
      { content: "beautiful", correct: true },
      { content: "run", correct: false }
    ]
  },
  {
    content: "Choose the correct article: ___ apple",
    options: [
      { content: "a", correct: false },
      { content: "an", correct: true },
      { content: "the", correct: false },
      { content: "no article", correct: false }
    ]
  },
  {
    content: "Which is a synonym for 'happy'?",
    options: [
      { content: "sad", correct: false },
      { content: "angry", correct: false },
      { content: "joyful", correct: true },
      { content: "tired", correct: false }
    ]
  },
  {
    content: "What is the opposite of 'big'?",
    options: [
      { content: "huge", correct: false },
      { content: "large", correct: false },
      { content: "small", correct: true },
      { content: "tall", correct: false }
    ]
  },
  {
    content: "Which word is a pronoun?",
    options: [
      { content: "John", correct: false },
      { content: "he", correct: true },
      { content: "book", correct: false },
      { content: "run", correct: false }
    ]
  },
  {
    content: "Choose the correct spelling:",
    options: [
      { content: "definately", correct: false },
      { content: "definitely", correct: true },
      { content: "definatly", correct: false },
      { content: "definetely", correct: false }
    ]
  },
  {
    content: "Which sentence is correct?",
    options: [
      { content: "They is here.", correct: false },
      { content: "They are here.", correct: true },
      { content: "They am here.", correct: false },
      { content: "They be here.", correct: false }
    ]
  },
  {
    content: "What is the plural of 'mouse'?",
    options: [
      { content: "mouses", correct: false },
      { content: "mice", correct: true },
      { content: "mouse", correct: false },
      { content: "mices", correct: false }
    ]
  },
  {
    content: "Which is a verb?",
    options: [
      { content: "quick", correct: false },
      { content: "run", correct: true },
      { content: "beautiful", correct: false },
      { content: "happy", correct: false }
    ]
  },
  {
    content: "Choose the correct article: ___ umbrella",
    options: [
      { content: "a", correct: false },
      { content: "an", correct: true },
      { content: "the", correct: false },
      { content: "no article", correct: false }
    ]
  },
  {
    content: "Which is an adjective?",
    options: [
      { content: "slowly", correct: false },
      { content: "beauty", correct: false },
      { content: "beautiful", correct: true },
      { content: "run", correct: false }
    ]
  },
  {
    content: "What is the opposite of 'early'?",
    options: [
      { content: "soon", correct: false },
      { content: "late", correct: true },
      { content: "quick", correct: false },
      { content: "before", correct: false }
    ]
  }
]

questions.each do |q|
  question = quiz.questions.create!(content: q[:content])
  q[:options].each do |opt|
    question.options.create!(content: opt[:content], correct: opt[:correct])
  end
end
