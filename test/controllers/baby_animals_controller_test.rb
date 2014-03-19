require 'test_helper'

class BabyAnimalsControllerTest < ActionController::TestCase
  setup do
    @baby_animal = baby_animals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:baby_animals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create baby_animal" do
    assert_difference('BabyAnimal.count') do
      post :create, baby_animal: { description: @baby_animal.description, img_url: @baby_animal.img_url, title: @baby_animal.title }
    end

    assert_redirected_to baby_animal_path(assigns(:baby_animal))
  end

  test "should show baby_animal" do
    get :show, id: @baby_animal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @baby_animal
    assert_response :success
  end

  test "should update baby_animal" do
    patch :update, id: @baby_animal, baby_animal: { description: @baby_animal.description, img_url: @baby_animal.img_url, title: @baby_animal.title }
    assert_redirected_to baby_animal_path(assigns(:baby_animal))
  end

  test "should destroy baby_animal" do
    assert_difference('BabyAnimal.count', -1) do
      delete :destroy, id: @baby_animal
    end

    assert_redirected_to baby_animals_path
  end
end
