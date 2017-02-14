class SurveyPolicy
  attr_reader :user, :survey

  def initialize(user, survey)
    @user = user
    @survey = survey
  end

  def new?
    user.user?
  end

  def create?
    user.user?
  end

  def edit?
    user.user? && (survey.user == user) 
  end

  def update?
    user.user? && (survey.user == user) 
  end


end
