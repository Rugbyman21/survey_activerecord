require('spec_helper')


 describe(Survey) do
#   describe("#save") do
#       it("lets you save surveys to the database") do
#         survey = Survey.new({:name => "Cheeses people like", :id => nil})
#         survey.save()
#         expect(Survey.all()).to(eq([survey]))
#       end
#   end
#  end
describe('#questions') do
    it("tells which questions are in it") do
      test_survey = Survey.create({:name => "survey"})
      test_question1 = Question.create({:description => "task1", :survey_id => test_survey.id})
      test_question2 = Question.create({:description => "task2", :survey_id => test_survey.id})
     expect(test_survey.questions()).to(eq([test_question1, test_question2]))
    end
  end


  # describe( ) do
  #   it("converts the survey name to uppercase") do
  #     survey = Survey.create({:description => "Cheeses people like"})
  #     expect(survey.description()).to(eq("CHEESES PEOPLE LIKE"))
  #   end
  end
