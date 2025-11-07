require "test_helper"

class CarsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cars_path
    assert_response :success
  end

  test "should get show" do
    user = User.create!(
      email: "test@example.com",
      password: "password123",
      role: "admin"
    )

    car = Car.create!(
      name: "Test Car",
      make: "Test",
      model_year: 2020,
      color: "Red",
      mileage: 1000,
      price: 1000,
      description: "Test description",
      status: "available",
      user: user
    )

    get car_path(car)
    assert_response :success
  end
end
