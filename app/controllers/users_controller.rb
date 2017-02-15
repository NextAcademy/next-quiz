class UsersController < Clearance::UsersController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = user_from_params
    render template: "users/new"
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_from_params)
    redirect_to @user
  end

  def create
    @user = User.new(user_from_params)
    if @user.save
      sign_in @user
      redirect_back_or url_after_create
    else
      respond_to do |format|
        format.html {render :new}
        format.js
      end
    end
  end

  private
  def user_from_params
    params.require(:user).permit(:email, :password, :role)
  end




end