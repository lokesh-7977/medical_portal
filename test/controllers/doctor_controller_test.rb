require "test_helper"

class DoctorControllerTest < ActionDispatch::IntegrationTest
  test "should get hospital" do
    get doctor_hospital_url
    assert_response :success
  end

  test "should get receptionist" do
    get doctor_receptionist_url
    assert_response :success
  end
end
