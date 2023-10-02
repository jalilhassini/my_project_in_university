require "application_system_test_case"

class StudentsTest < ApplicationSystemTestCase
  setup do
    @student = students(:one)
  end

  test "visiting the index" do
    visit students_url
    assert_selector "h1", text: "Students"
  end

  test "creating a Student" do
    visit students_url
    click_on "New Student"

    fill_in "Adresse", with: @student.Adresse
    fill_in "Date de naissance", with: @student.Date_de_naissance
    fill_in "Email", with: @student.Email
    fill_in "Nationalité", with: @student.Nationalité
    fill_in "Nom", with: @student.Nom
    fill_in "Prénom", with: @student.Prénom
    fill_in "Téléphone", with: @student.Téléphone
    fill_in "Ville", with: @student.Ville
    fill_in "Code postal", with: @student.code_postal
    fill_in "Commune", with: @student.commune
    fill_in "Password", with: @student.password
    fill_in "Sexe", with: @student.sexe
    fill_in "Spécialité", with: @student.spécialité
    click_on "Create Student"

    assert_text "Student was successfully created"
    click_on "Back"
  end

  test "updating a Student" do
    visit students_url
    click_on "Edit", match: :first

    fill_in "Adresse", with: @student.Adresse
    fill_in "Date de naissance", with: @student.Date_de_naissance
    fill_in "Email", with: @student.Email
    fill_in "Nationalité", with: @student.Nationalité
    fill_in "Nom", with: @student.Nom
    fill_in "Prénom", with: @student.Prénom
    fill_in "Téléphone", with: @student.Téléphone
    fill_in "Ville", with: @student.Ville
    fill_in "Code postal", with: @student.code_postal
    fill_in "Commune", with: @student.commune
    fill_in "Password", with: @student.password
    fill_in "Sexe", with: @student.sexe
    fill_in "Spécialité", with: @student.spécialité
    click_on "Update Student"

    assert_text "Student was successfully updated"
    click_on "Back"
  end

  test "destroying a Student" do
    visit students_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Student was successfully destroyed"
  end
end
