# frozen_string_literal: true

class ProfilesController < ApplicationController
  before_action :set_profile
  def show; end

  def edit; end

  def update
    if @profile.update(profile_params)
      redirect_to profile_path, notice: t("controllers.update.success", model: "Profile")
    else
      render :edit, :unprocessable_entity
    end
  end

  private

  def set_profile
    @profile = current_user.profile
  end

  def profile_params
    params.require(:profile).permit(:username, :first_name, :last_name)
  end
end
