require "test_helper"

class VetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vet = vets(:one)
  end

  test "should get index" do
    get vets_url
    assert_response :success
  end

  test "should get new" do
    get new_vet_url
    assert_response :success
  end

  test "should create vet" do
    assert_difference("Vet.count") do
      post vets_url, params: { vet: { age: @vet.age, name: @vet.name } }
    end

    assert_redirected_to vet_url(Vet.last)
  end

  test "should show vet" do
    get vet_url(@vet)
    assert_response :success
  end

  test "should get edit" do
    get edit_vet_url(@vet)
    assert_response :success
  end

  test "should update vet" do
    patch vet_url(@vet), params: { vet: { age: @vet.age, name: @vet.name } }
    assert_redirected_to vet_url(@vet)
  end

  test "should destroy vet" do
    assert_difference("Vet.count", -1) do
      delete vet_url(@vet)
    end

    assert_redirected_to vets_url
  end
end
