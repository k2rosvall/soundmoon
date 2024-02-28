require "test_helper"
class ProfilesControllerTest < ActionDispatch::IntegrationTest
  def user
    @user ||= create(:user, :with_profile)
  end

  setup do
    sign_in(user)
  end

  test "must show profile" do
    get profile_url

    assert_response :success
  end

  test "must get edit" do
    get edit_profile_url

    assert_response :success
  end

  test "must edit profile" do
    put profile_url, params: { profile: { first_name: "Jane" } }

    assert_redirected_to profile_url
    assert_equal "Jane", user.profile.first_name
  end
end
