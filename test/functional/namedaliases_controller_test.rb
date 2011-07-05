require 'test_helper'

class NamedaliasesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Namedalias.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Namedalias.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Namedalias.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to namedalias_url(assigns(:namedalias))
  end

  def test_edit
    get :edit, :id => Namedalias.first
    assert_template 'edit'
  end

  def test_update_invalid
    Namedalias.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Namedalias.first
    assert_template 'edit'
  end

  def test_update_valid
    Namedalias.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Namedalias.first
    assert_redirected_to namedalias_url(assigns(:namedalias))
  end

  def test_destroy
    namedalias = Namedalias.first
    delete :destroy, :id => namedalias
    assert_redirected_to namedaliases_url
    assert !Namedalias.exists?(namedalias.id)
  end
end
