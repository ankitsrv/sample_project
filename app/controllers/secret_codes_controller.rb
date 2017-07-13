class SecretCodesController < ApplicationController
  load_and_authorize_resource
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => exception.message
  end

  def new
    @secret_code = SecretCode.new
  end

  def index
    @secret_codes = SecretCode.all
  end

  def create
    @secret_code = SecretCode.new(params_require)
    if current_user
      @secret_code.user = current_user
    end
    if @secret_code.save
      redirect_to @secret_code
    else
      render :new
    end    
  end

  def edit
  end

  def show
    @secret_code = SecretCode.find(params[:id])
  end

  def delete
  end

  def update
  end

  def random_code
    if params["number"]
      params["number"].to_i.times do
        rand_string = ('a'..'z').to_a.shuffle[0,8].join
        @secret_code = SecretCode.create(code: rand_string)
      end
    end
    redirect_to "index"   
  end

  private
  def params_require
    params.require(:secret_code).permit(:code)
  end
end
