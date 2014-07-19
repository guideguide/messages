# The Messages class makes it possible to provide GuideGuide in multiple
# languages. English is used by default if a translation does not exist for the
# i18n string provided. To add a new language, add a new `when` block for the
# desired i18n string that returns the translated string. For methods that
# include dynamic data, be sure to include the dynamic data.
#
# Usage:
#   var messages = new Messages "en_us"
#   console.log messages.makeGrid()
#   # Make grid
#
# Styleguide
#   - Use sentence case for titles.
#
class Messages

  # Create a Messages object and set the language to be used.
  #
  #   locale - locale code for language of choice
  #
  # Currently supported locales:
  #   - English: en_us
  #       credit: https://github.com/cameronmcefee
  #   - French: fr_fr
  #       credit: https://github.com/damienbigot
  #               https://github.com/PECourtejoie
  #   - Spanish: es_es
  #       credit: https://github.com/bomberstudios
  #   - Portuguese: pt_br
  #       credit: https://github.com/thiagotomasi
  #
  constructor: (locale) ->
    @i18n = locale if locale?

  #
  # UI Messages
  # These messages are generally titles and button labels.
  #

  uiGrid: =>
    switch @i18n
      when "es_es"
        "Retícula"
      when "fr_fr"
        "Grille"
      when "pt_br"
        "Grid"
      else
        "Grid"

  uiCustom: =>
    switch @i18n
      when "es_es"
        "Personalizada"
      when "fr_fr"
        "Personnalisée"
      when "pt_br"
        "Personalizada"
      else
        "Custom"

  uiSets: =>
    switch @i18n
      when "es_es"
        "Sets"
      when "fr_fr"
        "Sets"
      when "pt_br"
        "Sets"
      else
        "Sets"

  uiDebug: =>
    switch @i18n
      when "es_es"
        "Debug"
      when "fr_fr"
        "Débug"
      when "pt_br"
        "Debug"
      else
        "Debug"

  uiClearForm: =>
    switch @i18n
      when "fr_fr"
        "Effacer le formulaire"
      when "pt_br"
        "Limpar formulário"
      else
        "Clear form"

  uiMakeGrid: =>
    switch @i18n
      when "es_es"
        "Crear retícula"
      when "fr_fr"
        "Créer la grille"
      when "pt_br"
        "Criar grid"
      else
        "Make grid"

  uiSaveSet: =>
    switch @i18n
      when "es_es"
        "Guardar set"
      when "fr_fr"
        "Enregistrer le set"
      when "pt_br"
        "Salvar set"
      else
        "Save set"

  uiImportSets: =>
    switch @i18n
      when "es_es"
        "Importar sets"
      when "fr_fr"
        "Importer des sets"
      when "pt_br"
        "Importar sets"
      else
        "Import sets"

  uiExportSets: =>
    switch @i18n
      when "es_es"
        "Exportar sets"
      when "fr_fr"
        "Exporter des sets"
      when "pt_br"
        "Exportar sets"
      else
        "Export sets"

  uiColumnMidpoint: =>
    switch @i18n
      when "es_es"
        "Punto medio de columna"
      when "fr_fr"
        "Centre des colonnes"
      when "pt_br"
        "Ponto central da coluna"
      else
        "Column midpoint"

  uiRowMidpoint: =>
    switch @i18n
      when "es_es"
        "Punto medio de fila"
      when "fr_fr"
        "Centre des lignes"
      when "pt_br"
        "Ponto central da linha"
      else
        "Row midpoint"

  uiGutterMidpoint: =>
    switch @i18n
      when "es_es"
        "Punto medio del medianil"
      when "fr_fr"
        "Centre des gouttières"
      when "pt_br"
        "Ponto central do espaçamento"
      else
        "Gutter midpoint"

  uiOk: =>
    switch @i18n
      when "es_es"
        "Ok"
      when "fr_fr"
        "Ok"
      when "pt_br"
        "Ok"
      else
        "Ok"

  uiCancel: =>
    switch @i18n
      when "es_es"
        "Cancelar"
      when "fr_fr"
        "Annuler"
      when "pt_br"
        "Cancelar"
      else
        "Cancel"

  uiOn: =>
    switch @i18n
      when "fr_fr"
        "Activé"
      when "pt_br"
        "Ligar"
      else
        "On"

  uiOff: =>
    switch @i18n
      when "fr_fr"
        "Désactivé"
      when "pt_br"
        "Desligar"
      else
        "Off"

  uiDonate: =>
    switch @i18n
      when "es_es"
        "Donar"
      when "fr_fr"
        "Faire un don"
      when "pt_br"
        "Doar"
      else
        "Donate"

  uiCheckForUpdates: =>
    switch @i18n
      when "es_es"
        "Buscar actualizaciones"
      when "fr_fr"
        "Vérifier les mises à jour"
      when "pt_br"
        "Buscar atualizações"
      else
        "Check for updates"

  uiShowLogs: =>
    switch @i18n
      when "es_es"
        "Mostrar logs"
      when "fr_fr"
        "Afficher l'historique"
      when "pt_br"
        "Mostrar logs"
      else
        "Show logs"

  uiSnapToPixels: =>
    switch @i18n
      when "fr_fr"
        "Magnétisme des pixels"
      when "pt_br"
        "Encaixar nos pixels"
      else
        "Snap to pixels"

  uiHorizontalPosition: =>
    switch @i18n
      when "es_es"
        "Posición horizontal"
      when "fr_fr"
        "Position horizontale"
      when "pt_br"
        "Posição horizontal"
      else
        "Horizontal position"

  uiVerticalPosition: =>
    switch @i18n
      when "es_es"
        "Posición vertical"
      when "fr_fr"
        "Position verticale"
      when "pt_br"
        "Posição vertical"
      else
        "Vertical position"

  uiHorizontalRemainder: =>
    switch @i18n
      when "es_es"
        "Resto horizontal"
      when "fr_fr"
        "Excédent horizontal"
      when "pt_br"
        "Restante horizontal"
      else
        "Horizontal remainder"

  uiVerticalRemainder: =>
    switch @i18n
      when "es_es"
        "Resto vertical"
      when "fr_fr"
        "Excédent vertical"
      when "pt_br"
        "Restante vertical"
      else
        "Vertical remainder"

  uiHorizontalFirst: =>
    switch @i18n
      when "es_es"
        "Izquierda"
      when "fr_fr"
        "Gauche"
      when "pt_br"
        "Esquerda"
      else
        "Left"

  uiHorizontalCenter: =>
    switch @i18n
      when "es_es"
        "Centro"
      when "fr_fr"
        "Centre"
      when "pt_br"
        "Centro"
      else
        "Center"

  uiHorizontalLast: =>
    switch @i18n
      when "es_es"
        "Derecha"
      when "fr_fr"
        "Droite"
      when "pt_br"
        "Direita"
      else
        "Right"

  uiVerticalFirst: =>
    switch @i18n
      when "es_es"
        "Arriba"
      when "fr_fr"
        "Haut"
      when "pt_br"
        "Acima"
      else
        "Top"

  uiVerticalCenter: =>
    switch @i18n
      when "es_es"
        "Centro"
      when "fr_fr"
        "Centre"
      when "pt_br"
        "Centro"
      else
        "Center"

  uiVerticalLast: =>
    switch @i18n
      when "es_es"
        "Abajo"
      when "fr_fr"
        "Bas"
      when "pt_br"
        "Abaixo"
      else
        "Bottom"

  uiNiceNo: =>
    switch @i18n
      when "es_es"
        "No, gracias"
      when "fr_fr"
        "Non, merci"
      when "pt_br"
        "Não, obrigado"
      else
        "No thanks"

  uiOpenInBrowser: =>
    switch @i18n
      when "es_es"
        "Abrir en navegador"
      when "fr_fr"
        "Ouvrir dans le navigateur"
      when "pt_br"
        "Abrir no navegador"
      else
        "Open in browser"

  #
  # Help Messages
  # These are essentially tooltips. They appear in the UI to explain features.
  #

  helpImportDesc: =>
    switch @i18n
      when "es_es"
        "Importa sets pegando una url de GitHub Gist en el campo de texto de
        abajo."
      when "fr_fr"
        "Importez des sets en collant une url Github Gist dans le champ ci-dessous."
      when "pt_br"
        "Importar os sets colando uma URL de GitHub Gist no campo de texto abaixo."
      else
        "Import sets by pasting a GitHub Gist url in the text field below."

  helpGistExport: =>
    switch @i18n
      when "es_es"
        'Estos son los datos de un set de guías exportado por el plugin
        GuideGuide. Para importarlos, haz click en el botón "Importar" en los
        ajustes de GuideGuide y pega la url de este Gist en el campo de texto.'
      when "fr_fr"
        'Ceci est un guide sur les données des sets exportées par l\'extension GuideGuide.
        Pour les importer, cliquez sur le bouton "Importer" dans les paramètres
		de GuideGuide et collez cette url Gist dans le champ.'
      when "pt_br"
        'Este é o guia de dados de set exportados pelo plugin GuideGuide. Para importar
         -lo, clique no botão "Importar" nas configurações do GuideGuide e cole a url do
         Gist no campo de texto'
      else
        'This is guide set data exported by the GuideGuide plugin. To import
        them, click the "Import" button in the GuideGuide settings and paste
        this Gist url into the text field.'

  #
  # Alert Messages
  # These are titles and messages for alert dialogues.
  #

  alertTitleUpToDate: =>
    switch @i18n
      when "es_es"
        "Estás al día"
      when "fr_fr"
        "À jour"
      when "pt_br"
        "Esta atualizado"
      else
        "Up to date"

  alertMessageUpToDate: =>
    switch @i18n
      when "es_es"
        "Ya tienes la última versión de GuideGuide."
      when "fr_fr"
        "Ceci est la version la plus récente de GuideGuide"
      when "pt_br"
        "O GuideGuide está atualizado com a última versão."
      else
        "GuideGuide is currently up to date."

  alertTitleUpdateError: =>
    switch @i18n
      when "es_es"
        "Error buscando actualizaciones"
      when "fr_fr"
        "Erreur lors de la recherche de mises à jour"
      when "pt_br"
        "Erro na verificação de atualizações"
      else
        "Error checking for updates"

  alertMessageUpdateError: =>
    switch @i18n
      when "es_es"
        "Desgraciadamente, GuideGuide no ha sido capaz de buscar actualizaciones
        en este momento. Por favor, inténtalo de nuevo más adelante."
      when "fr_fr"
        'Malheureusement, une erreur est survenue lors de la vérification des mises à jour.
        Si le problème persiste, consultez le site
        <strong><a class="js-link" href="http://guideguide.me">guideguide.me</a></strong>
        pour de nouvelles versions.'
      when "pt_br"
        'Infelizmente, algo deu errado ao tentar verificar se há atualizações.
        Se o problema persistir, verifique
        <strong><a class="js-link" href="http://guideguide.me">guideguide.me</a></strong>
        para novas versões.'
      else
        'Unfortunately, something went wrong when trying to check for updates.
        If the problem persists, check
        <strong><a class="js-link" href="http://guideguide.me">guideguide.me</a></strong>
        for new versions.'

  alertTitleUpdate: =>
    switch @i18n
      when "es_es"
        "Actualizaciones disponibles"
      when "fr_fr"
        "Mises à jour disponibles"
      when "pt_br"
        "Atualizações disponíveis"
      else
        "Updates available"

  alertMessageUpdate: =>
    switch @i18n
      when "es_es"
        "Actualiza GuideGuide para obtener la última versión"
      when "fr_fr"
        "Mettez GuideGuide à jour pour obtenir la version la plus récente"
      when "pt_br"
        "Atualize o GuideGuide para obter a versão mais recente."
      else
        "Update GuideGuide to get the latest version."

  alertTitleImportSuccess: =>
    switch @i18n
      when "es_es"
        "Sets importados"
      when "fr_fr"
        "Groupes importés"
      when "pt_br"
        "Sets importados"
      else
        "Sets imported"

  alertMessageImportSuccess: =>
    switch @i18n
      when "es_es"
        "Tus sets se han importado correctamente."
      when "fr_fr"
        "Vos groupes ont été importés avec succès."
      when "pt_br"
        "Seus sets foram importados corretamente."
      else
        "Your sets have successfully been imported."

  alertTitleImportGistError: =>
    switch @i18n
      when "es_es"
        "Error de Importación"
      when "fr_fr"
        "Erreur d'importation"
      when "pt_br"
        "Erro na importação"
      else
        "Import Error"

  alertMessageImportGistError: =>
    switch @i18n
      when "es_es"
        "Desgraciadamente, GuideGuide no ha sido capaz de importar sets en este
        momento. Por favor, inténtalo de nuevo más adelante."
      when "fr_fr"
        "Malheureusement, GuideGuide ne peut importer des groupes maintenant.
        Merci de réessayer plus tard."
      when "pt_br"
        "Infelizmente, o GuideGuide não foi capaz de importar os sets neste
        momento. Por favor, tente novamente mais tarde."
      else
        "Unfortunately, GuideGuide is unable to import sets at this time.
        Please try again later."

  alertTitleImportGistNoSets: =>
    switch @i18n
      when "es_es"
        "Error de Importación"
      when "fr_fr"
        "Erreur d'importation"
      when "pt_br"
        "Erro na importação"
      else
        "Import error"

  alertMessageImportGistNoSets: =>
    switch @i18n
      when "es_es"
        "GuideGuide no ha sido capaz de encontrar sets.json en este Gist."
      when "fr_fr"
        "GuideGuide n'a pas trouvé de document sets.json dans ce Gist."
      when "pt_br"
        "O GuideGuide não foi capaz de encontrar o arquivo sets.json neste Gist."
      else
        "GuideGuide was not able to find sets.json in this Gist."

  alertTitleImportNotGist: =>
    switch @i18n
      when "es_es"
        "Error de Importación"
      when "fr_fr"
        "Erreur d'importation"
      when "pt_br"
        "Erro na importação"
      else
        "Import Error"

  alertMessageImportNotGist: =>
    switch @i18n
      when "es_es"
        "El texto de entrada no contiene una url de GitHub Gist."
      when "fr_fr"
        "Le texte d'entrée ne contient pas d'url GitHub Gist."
      when "pt_br"
        "O texto de entrada não contém uma url do GitHub Gist."
      else
        "The input text does not contain a GitHub Gist url."

  alertTitleExportSuccess: =>
    switch @i18n
      when "es_es"
        "Sets exportados"
      when "fr_fr"
        "Les groupes ont été exportés"
      when "pt_br"
        "Configurações exportadas"
      else
        "Sets have been exported"

  alertMessageExportSuccess: (url) =>
    button = "<div><strong><a class='js-link button export-button' href='#{ url }'>#{ @uiOpenInBrowser() }</a></strong></div>"
    switch @i18n
      when "es_es"
        "Tus sets han sido exportados a un GitHub Gist secreto. #{ button }"
      when "fr_fr"
        "Vos groupes ont été exportés dans un Github Gist secret. #{ button }"
      when "pt_br"
        "Seus sets foram exportadas para um GitHub Gist secreto. #{ button }"
      else
        "Your sets have been exported to a secret GitHub Gist. #{ button }"

  alertTitleExportError: =>
    switch @i18n
      when "es_es"
        "Imposible exportar"
      when "fr_fr"
        "Impossible d'exporter"
      when "pt_br"
        "Impossivel exportar"
      else
        "Unable to export"

  alertMessageExportError: =>
    switch @i18n
      when "es_es"
        "Desgraciadamente, GuideGuide no ha sido capaz de exportar sets en este
        momento. Por favor, inténtalo de nuevo más adelante."
      when "fr_fr"
        "Malheureusement, GuideGuide ne peut exporter des groupes maintenant.
        Merci de réessayer plus tard."
      when "pt_br"
        "Infelizmente, o GuideGuide não foi capaz de exportar os sets neste
        momento. Por favor, tente novamente mais tarde."
      else
        "Unfortunately, GuideGuide is unable to export sets at this time.
        Please try again later."

  alertTitleDonate: =>
    switch @i18n
      when "es_es"
        "¿Te gustaría donar?"
      when "fr_fr"
        "Voulez-vous faire un don ?"
      when "pt_br"
        "Gostaria de doar?"
      else
        "Would you like to donate?"

  alertMessageDonate: =>
    switch @i18n
      when "es_es"
        "¡Vaya, ya has usado GuideGuide 30 veces! Parece que le estás sacando
        bastante partido a GuideGuide, ¿te interesaría hacer una donación para
        contribuir a su desarrollo?"
      when "fr_fr"
        "Wow, vous avez utilisé GuideGuide 30 fois ! Vu que vous semblez l'utiliser
        souvent, avez-vous pensé à effectuer une donation pour contribuer
        à son développement ?"
      when "pt_br"
        "Yowza, você já usou o GuideGuide 30 vezes! Parece que o GuideGuide anda
        sendo bem útil, Você consideraria fazer uma doação para o desenvolvimento?"
      else
        "Yowza, you've used GuideGuide 30 times! Since you seem to get quite a
        bit of use out of GuideGuide, would you consider making a donation to
        the development?"

  #
  # Grid notation messages
  # These messages appear in the Custom field
  #

  # Code: 1
  gnUnrecognized: =>
    switch @i18n
      when "es_es"
        "Comando no reconocido"
      when "fr_fr"
        "Commande inconnue"
      when "pt_br"
        "Comando desconhecido"
      else
        "Unrecognized command"

  # Code: 2
  gnNoGrids: =>
    switch @i18n
      when "es_es"
        "Esta cadena no contiene ninguna retícula"
      when "fr_fr"
        "Cette chaîne ne contient aucune grille"
      when "pt_br"
        "Esta palavra não contém nenhuma grids"
      else
        "This string does not contain any grids"

  # Code: 3
  gnNoFillWildcards: =>
    switch @i18n
      when "es_es"
        "Los comodines no pueden ser rellenos"
      when "fr_fr"
        "Les jokers ne peuvent être du remplissage"
      when "pt_br"
        "Wildcards não podem ser preenchido"
      else
        "Wildcards cannot be fills"

  # Code: 4
  gnOneFillPerGrid: =>
    switch @i18n
      when "es_es"
        "Una retícula sólo puede contener un relleno"
      when "fr_fr"
        "Une grille ne peut contenir qu'un remplissage"
      when "pt_br"
        "Uma grid só pode conter um preenchimento"
      else
        "A grid can only contain one fill"

  # Code: 5
  gnFillInVariable: =>
    switch @i18n
      when "es_es"
        "Las variables no pueden contener un relleno"
      when "fr_fr"
        "Les variables ne peuvent contenir qu'un remplissage"
      when "pt_br"
        "As variáveis ​​não podem conter um preenchimento"
      else
        "Variables cannot contain a fill"

  # Code: 6
  gnUndefinedVariable: =>
    switch @i18n
      when "es_es"
        "Variable no definida"
      when "fr_fr"
        "Variable indéfinie"
      when "pt_br"
        "Variável não definida"
      else
        "Undefined variable"

  gnStringFromExistingGuides: =>
    switch @i18n
      when "es_es"
        "Cadena generada a partir de las guías existentes"
      when "fr_fr"
        "Chaîne générée à partir de code existant"
      when "pt_br"
        "Palavra gerada a partir das guias existentes"
      else
        "String generated from existing guides"

if (typeof module != 'undefined' && typeof module.exports != 'undefined')
  module.exports = Messages
else
  window.Messages = Messages
