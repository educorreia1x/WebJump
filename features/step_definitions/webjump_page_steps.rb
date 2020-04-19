# Clicar nos botoes e verificar a existencia

Dado("que eu acesso a pagina") do
  visit "/"
end

Dado("clico no botao One") do
  find("#panel_body_one")
  click_button "One"
end

Dado("clico no botao Two") do
  find("#panel_body_one")
  click_button "Two"
end

Dado("clico no botao Four") do
  find("#panel_body_one")
  click_button "Four"
end

Entao("verifico a ausencia dos mesmos") do
  find("#panel_body_one")
  assert_none_of_selectors(:css, "#btn_one", "#btn_two", "#btn_link")
end

# Clicar nos botoes dentro do Iframe

Dado("clico no botao One no iframe") do
  within_frame(0) do
    click_button "One"
  end
end

Dado("clico no botao Two no iframe") do
  within_frame(0) do
    click_button "Two"
  end
end

Dado("clico no botao Four no iframe") do
  within_frame(0) do
    click_button "Four"
  end
end

Entao("verifico a ausencia dos botoes no iframe") do
  within_frame(0) do
    assert_none_of_selectors(:css, "#btn_one", "#btn_two", "#btn_link")
  end
end

# Preencher campo, Clicar no botao, checar a opcao, selecionar opcao, validar imagem

Dado("preencho o campo com o nome") do
  fill_in "first_name", with: "Eduardo"
end

Dado("checo a opcao OptionThree") do
  check("opt_three")
end

Dado("seleciono a opcao ExampleTwo") do
  select("ExampleTwo")
end

Entao("valido a existencia da imagem do logo Selenium Webdriver") do
  imagem = find("#panel_body_three")
  expect(imagem).to have_css "img[alt$=selenium]"
end
