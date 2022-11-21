require "test_helper"

class NarutosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @naruto = narutos(:one)
  end

  test "should get index" do
    get narutos_url, as: :json
    assert_response :success
  end

  test "should create naruto" do
    assert_difference("Naruto.count") do
      post narutos_url, params: { naruto: { character: @naruto.character, eye: @naruto.eye, village: @naruto.village } }, as: :json
    end

    assert_response :created
  end

  test "should show naruto" do
    get naruto_url(@naruto), as: :json
    assert_response :success
  end

  test "should update naruto" do
    patch naruto_url(@naruto), params: { naruto: { character: @naruto.character, eye: @naruto.eye, village: @naruto.village } }, as: :json
    assert_response :success
  end

  test "should destroy naruto" do
    assert_difference("Naruto.count", -1) do
      delete naruto_url(@naruto), as: :json
    end

    assert_response :no_content
  end
end
