class Api::V1::UsersController < ApplicationController
	def me
    output = {'email' => current_user.email, 'name' => current_user.name}.to_json
    render :json => output
  end
end
