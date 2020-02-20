require "application_system_test_case"

class FuncionsTest < ApplicationSystemTestCase
  setup do
    @funcion = funcions(:one)
  end

  test "visiting the index" do
    visit funcions_url
    assert_selector "h1", text: "Funcions"
  end

  test "creating a Funcion" do
    visit funcions_url
    click_on "New Funcion"

    fill_in "Dia", with: @funcion.dia
    fill_in "Num sillas", with: @funcion.num_sillas
    fill_in "Pelicula", with: @funcion.pelicula
    click_on "Create Funcion"

    assert_text "Funcion was successfully created"
    click_on "Back"
  end

  test "updating a Funcion" do
    visit funcions_url
    click_on "Edit", match: :first

    fill_in "Dia", with: @funcion.dia
    fill_in "Num sillas", with: @funcion.num_sillas
    fill_in "Pelicula", with: @funcion.pelicula
    click_on "Update Funcion"

    assert_text "Funcion was successfully updated"
    click_on "Back"
  end

  test "destroying a Funcion" do
    visit funcions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Funcion was successfully destroyed"
  end
end
