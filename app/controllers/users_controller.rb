class UsersController < ApplicationController
	before_action :check_file_format, only: [:import]

  def index
    @users = User.all
  end

  def import
		begin
			User.import(params[:file])
			redirect_to users_path, notice: 'CSV imported successfully!'
		rescue
			redirect_to root_path, notice: 'An error occured during the import, please check if the data in the CSV file is in the right format!'
		end
  end

  private

  def check_file_format
		if params[:file].content_type == 'text/csv'
			true
		else
			redirect_to root_path, notice: "The file you are trying to upload is not a csv file!"
		end
  end
end
