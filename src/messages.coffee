define ->

  Messages =
    locale: "en_us"
    supportedLocales: [
      "en_us"
      "fr_fr"
      "pt_br"
      "es_es"
      "pl_pl"
    ]

    # Get a localized string.
    #
    #   key  - key to find in in @library
    #   data - data passed to the message that can be used in the template
    #
    # Returns a String.
    get: (key, data) ->
      return @library[key][@locale](data) if @library[key]?[@locale]
      return @library[key]["en_us"](data) if @library[key]?["en_us"]
      ""

    # Localized strings for each message.
    #
    # Example:
    #
    # foo:
    #   en_us: (data) -> "Bar #{ bat }"
    #
    library:

      # Label for the first tab in the UI. Refers to the grid form.
      tabForm:
        en_us: -> "Form"
        fr_fr: -> "Création"
        pt_br: -> "Formulário"
        es_es: -> "Formulario"
        pl_pl: -> "Układ"

      # Lable for the second tab in the UI. Refers to the grid notation form for
      # "custom" grids.
      tabCustom:
        en_us: -> "Custom"
        fr_fr: -> "Code"
        pt_br: -> "Customizado"
        es_es: -> "Personalizado"
        pl_pl: -> "Własne"

      # Label for the third tab in the UI. Refers to the saved grid list.
      tabSaved:
        en_us: -> "Saved"
        fr_fr: -> "Collection"
        pt_br: -> "Salvo"
        es_es: -> "Guardado"
        pl_pl: -> "Zapisano"

      # Label for the button that appears on part of the UI that applies the
      # guides of the form, grid notation, or selected grid.
      btnAddGuides:
        en_us: -> "Add guides"
        fr_fr: -> "Ajouter les repères"
        pt_br: -> "Adicionar guias"
        es_es: -> "Añadir guías"
        pl_pl: -> "Dodaj linie pomocnicze"

      # Label for the default button for alert modals.
      btnOk:
        en_us: -> "Ok"
        fr_fr: -> "Ok"
        pt_br: -> "Ok"
        es_es: -> "Ok"
        pl_pl: -> "OK"

      # Label for confirmation modals. Clicking agrees.
      btnYes:
        en_us: -> "Yes"
        fr_fr: -> "Oui"
        pt_br: -> "Sim"
        es_es: -> "Si"
        pl_pl: -> "Tak"

      # Label for the confirmation modals. Clicking rejects.
      btnNo:
        en_us: -> "No"
        fr_fr: -> "Non"
        pt_br: -> "Não"
        es_es: -> "No"
        pl_pl: -> "Nie"

      # Label for the button that explains what grid notation is. Appears in the
      # “more” menu on the Custom tab.
      btnWhatIsThis:
        en_us: -> "What is this?"
        fr_fr: -> "Qu'est-ce que c'est ?"
        pt_br: -> "O que é isso?"
        es_es: -> "¿Qué es esto?"
        pl_pl: -> "Co to jest?"

      # Label for the button that opens the form that allows you to save a grid.
      # Appears in the “more” menu on the Grid and Custom tabs.
      btnSaveGrid:
        en_us: -> "Save grid"
        fr_fr: -> "Enregistrer la grille"
        pt_br: -> "Salvar grid"
        es_es: -> "Guardar retícula"
        pl_pl: -> "Zapisz wzorzec"

      # Label for the confirmation modals. Clicking cancels the current action.
      btnCancel:
        en_us: -> "Cancel"
        fr_fr: -> "Annuler"
        pt_br: -> "Cancelar"
        es_es: -> "Cancelar"
        pl_pl: -> "Anuluj"

      # Label for the button that resets the contents of the current form to
      # their default values. Appears in the “more” menu on the Grid and Custom
      # tabs.
      btnResetForm:
        en_us: -> "Reset form"
        fr_fr: -> "Effacer"
        pt_br: -> "Resetar formulário"
        es_es: -> "Resetear formulario"
        pl_pl: -> "Zresetuj układ"

      # Label for the button that encourages upgrading to the paid version of
      # GuideGuide. Appears in the “more” on all tabs when the trial mode has
      # expired.
      btnLearnMore:
        en_us: -> "Learn more"
        fr_fr: -> "En savoir plus"
        pt_br: -> "Aprenda mais"
        es_es: -> "Saber más"
        pl_pl: -> "Dowiedz się więcej"

      # Label for the button that allows editing a selected saved grid. Appears
      # in the “more” menu on the Saved tab.
      btnEditSelected:
        en_us: -> "Edit selected"
        fr_fr: -> "Modifier la sélection"
        pt_br: -> "Editar selecionados"
        es_es: -> "Editar seleccionados"
        pl_pl: -> "Edytuj zaznaczone"

      # Label for the button that deletes the selected saved grid. Appears in
      # the “more” menu on the Saved tab.
      btnDeleteSelected:
        en_us: -> "Delete selected"
        fr_fr: -> "Supprimer la sélection"
        pt_br: -> "Deletar selecionados"
        es_es: -> "Borrar seleccionados"
        pl_pl: -> "Skasuj zaznaczone"

      # Label for the button that opens the import modal. Appears in the “more”
      # menu on the Saved tab.
      btnImport:
        en_us: -> "Import"
        fr_fr: -> "Importation"
        pt_br: -> "Importar"
        es_es: -> "Importar"
        pl_pl: -> "Import"

      # Label for the button that opens the export modal Appears in the “more”
      # menu on the Saved tab.
      btnExport:
        en_us: -> "Export"
        fr_fr: -> "Exportation"
        pt_br: -> "Exportar"
        es_es: -> "Exportar"
        pl_pl: -> "Eksport"

      # Label for the button that bootstaps the default grids. Appears in the
      # blankslate view when all saved grids are removed.
      btnAddDefaultGrids:
        en_us: -> "Add default grids"
        fr_fr: -> "Ajouter les grilles par défaut"
        pt_br: -> "Adicionar grids padrões"
        es_es: -> "Añadir retículas por defecto"
        pl_pl: -> "Dodaj domyślne wzorce"

      # Label for the button that allows for importing data from a file. Appears
      # in the import modal.
      btnFromAFile:
        en_us: -> "From a file"
        fr_fr: -> "À partir d'un fichier"
        pt_br: -> "A partir de um arquivo"
        es_es: -> "Desde un fichero"
        pl_pl: -> "Z pliku"

      # Label for the button that allows for importing data from a GitHub Gist.
      # Appears in the import modal.
      #
      # https://gist.github.com/
      btnFromAGitHubGist:
        en_us: -> "From a GitHub Gist"
        fr_fr: -> "À partir d'un Gist de GitHub"
        pt_br: -> "A partir de um Gist do GitHub"
        es_es: -> "Desde un Gist de GitHub"
        pl_pl: -> "Z Gistu GitHub"

      # Label for the button that allows for exporting data to a file. Appears
      # in the export modal.
      btnToAFile:
        en_us: -> "To a file"
        fr_fr: -> "Dans un fichier"
        pt_br: -> "Para um arquivo"
        es_es: -> "A un fichero"
        pl_pl: -> "Do pliku"

      # Label for the button that allows for exporting data to a GitHub Gist.
      # Appears in the export modal.
      #
      # https://gist.github.com/
      btnToAGitHubGist:
        en_us: -> "To a GitHub Gist"
        fr_fr: -> "Vers un Gist de GitHub"
        pt_br: -> "Para um Gist do GitHub"
        es_es: -> "A un Gist de GitHub"
        pl_pl: -> "Do Gistu GitHub"

      # Label for the button that creates a new grid from guides that exist in
      # the document. Appears in the “more” menu on the Saved tab.
      btnNewFromExisting:
        en_us: -> "New grid from existing guides"
        fr_fr: -> "Nouvelle grille à partir des repères existants"
        pt_br: -> "Novo grid a partir de um grid já existente"
        es_es: -> "Nueva retícula a partir de las guías existentes"
        pl_pl: -> "Nowy wzorzec z aktualnych linii pomocniczych"

      # Label for the “column width” field in the grid form. Width refers to how
      # wide each individual column is.
      inputWidth:
        en_us: -> "Width"
        fr_fr: -> "Largeur"
        pt_br: -> "Largura"
        es_es: -> "Anchura"
        pl_pl: -> "Szerokość"

      # Label for the “row height” field in the grid form. Height refers to how
      # tall each individual row is.
      inputHeight:
        en_us: -> "Height"
        fr_fr: -> "Hauteur"
        pt_br: -> "Altura"
        es_es: -> "Altura"
        pl_pl: -> "Wysokość"

      # Label for the “horizontal gutter” and “vertical gutter” fields in the
      # grid form. Gutter refers to the space between the columns or rows.
      inputGutter:
        en_us: -> "Gutter"
        fr_fr: -> "Gouttière"
        pt_br: -> "Gutter"
        es_es: -> "Gutter"
        pl_pl: -> "Odstęp między kolumnami"

      # Label for the “margin” fields in the grid form. Margin refers to the
      # space at the top, left, bottom, and right sides of the context.
      inputMargin:
        en_us: -> "Margin"
        fr_fr: -> "Marge"
        pt_br: -> "Margem"
        es_es: -> "Margen"
        pl_pl: -> "Margines"

      # Label for the “number of columns” field in the grid form. Column refers
      # to a repeating squence of uniformely sized vertical spaces.
      inputColumns:
        en_us: -> "Columns"
        fr_fr: -> "Colonnes"
        pt_br: -> "Colunas"
        es_es: -> "Colunas"

      # Label for the “number of rows field in the grid form. Row refers
      # to a repeating squence of uniformely sized horizontal spaces.
      inputRows:
        en_us: -> "Rows"
        fr_fr: -> "Rangées"
        pt_br: -> "Linhas"
        es_es: -> "Filas"
        pl_pl: -> "Wiersze"

      # Label for the field that lets you define a GitHub Gist url from which to
      # import data. Appears in the import modal after “From a GitHub Gist” is
      # clicked.
      #
      # https://gist.github.com
      inputGitHubGistURL:
        en_us: -> "GitHub Gist URL or ID"
        fr_fr: -> "URL ou ID du Gist de GitHub"
        pt_br: -> "URL ou ID de um Gist do GitHub"
        es_es: -> "URL o ID de un Gist de GitHub"
        pl_pl: -> "URL lub ID Gistu GitHub"

      # Label for the item that positions grids to the left. Appears in the
      # Position dropdown which appears when a column width is specified.
      dropdownLeft:
        en_us: -> "Left"
        fr_fr: -> "Gauche"
        pt_br: -> "Esquerda"
        es_es: -> "Izquierda"
        pl_pl: -> "Lewa"

      # Label for the item that centers horizontal or veritcal grids. Appears in
      # the Position dropdown which appears when a column width or row height.
      # is specified.
      dropdownCenter:
        en_us: -> "Center"
        fr_fr: -> "Centre"
        pt_br: -> "Centro"
        es_es: -> "Centro"
        pl_pl: -> "Środkowa"

      # Label for the item that positions grids to the right. Appears in the
      # Position dropdown which appears when a column width is specified.
      dropdownRight:
        en_us: -> "Right"
        fr_fr: -> "Droite"
        pt_br: -> "Direita"
        es_es: -> "Derecha"
        pl_pl: -> "Prawa"

      # Label for the item that positions grids to the top. Appears in the
      # Position dropdown which appears when a row height is specified.
      dropdownTop:
        en_us: -> "Top"
        fr_fr: -> "Haut"
        pt_br: -> "Topo"
        es_es: -> "Arriba"
        pl_pl: -> "Górna"

      # Label for the item that positions grids to the bottom. Appears in the
      # Position dropdown which appears when a row height is specified.
      dropdownBottom:
        en_us: -> "Bottom"
        fr_fr: -> "Bas"
        pt_br: -> "Baixo"
        es_es: -> "Abajo"
        pl_pl: -> "Dolna"

      # Message that appears in the blankslate view when no grids are saved.
      # Prompts the user to create a grid or bootstap the default grids.
      blankslateGrids:
        en_us: -> "You have no grids yet! Save your own or…"
        fr_fr: -> "Vous n'avez aucune grille ! Enregistrer la vôtre ou…"
        pt_br: -> "Você ainda não tem nenhum grid! Crie os seu próprios…"
        es_es: -> "¡No hay ninguna retícula definida! Guarda la tuya o…"
        pl_pl: -> "Nie masz jeszcze wzorców! Zapisz swój własny lub…"

      # Message that appears in the grid notation field when it is empty. It
      # explains to the user what the field is for.
      #
      # http://guideguide.me/documentation/grid-notation/
      placeholderCustom:
        en_us: -> "Write grid notation here"
        fr_fr: -> "Écriver ici la synthaxe de votre grille"
        pt_br: -> "Escreva anotações sobre o seu grid aqui"
        es_es: -> "Escribe aquí la notación de retícula"
        pl_pl: -> "Wpisz tutaj definicję w odpowiedniej notacji"

      # Message that appears when the grid name field is empty. Appears when
      # saving a grid.
      placeholderName:
        en_us: -> "Name your grid"
        fr_fr: -> "Nommer votre grille"
        pt_br: -> "Nomeie o seu grid"
        es_es: -> "Nombra tu retícula"
        pl_pl: -> "Nazwij swój wzorzec"

      # Default title for new grids. Appears when saving a grid.
      titleUntitledGrid:
        en_us: -> "Untitled Grid"
        fr_fr: -> "Sans titre"
        pt_br: -> "Grid sem Nome"
        es_es: -> "Retícula Sin Título"
        pl_pl: -> "Nienazwany wzorzec"

      # Name for a default grid which “outlines” the context by placing guides
      # on the top, left, right, and bottom sides.
      titleOutline:
        en_us: -> "Outline"
        fr_fr: -> "Contours"
        pt_br: -> "Contorno"
        es_es: -> "Contorno"
        pl_pl: -> "Kontur"

      # Name for the default two column grid.
      titleTwoColumnGrid:
        en_us: -> "Two column grid"
        fr_fr: -> "Deux colonnes"
        pt_br: -> "Grid com duas colunas"
        es_es: -> "Retícula de dos columnas"
        pl_pl: -> "Dwie kolumny"

      # Name for the default three column grid.
      titleThreeColumnGrid:
        en_us: -> "Three column grid"
        fr_fr: -> "Trois colonnes"
        pt_br: -> "Grid com três colunas"
        es_es: -> "Retícula de tres columnas"
        pl_pl: -> "Trzy kolumny"

      # Title that appears at the top of the panel while saving a grid.
      titleSaveYourGrid:
        en_us: -> "Save your grid"
        fr_fr: -> "Enregistrer votre grille"
        pt_br: -> "Salve o seu grid"
        es_es: -> "Guarda tu retícula"
        pl_pl: -> "Zapisz swój wzorzec"

      # Title that appears at the top of the panel while the import modal is
      # active.
      titleImportGrids:
        en_us: -> "Import grids"
        fr_fr: -> "Importer des grilles"
        pt_br: -> "Importe grids"
        es_es: -> "Importar reticulas"
        pl_pl: -> "Importuj wzorce"

      # Title that appears at the top of the panel while the export modal is
      # active.
      titleExportGrids:
        en_us: -> "Export grids"
        fr_fr: -> "Exporter des grilles"
        pt_br: -> "Exporte grids"
        es_es: -> "Exportar retículas"
        pl_pl: -> "Eksportuj wzorce"

      # Title that appears at the top alert message that will appear if there is
      # an error while exporting grid data.
      titleExportError:
        en_us: -> "Export error"
        fr_fr: -> "Erreur lors de l'export"
        pt_br: -> "Exporte o erro"
        es_es: -> "Error de exportación"
        pl_pl: -> "Błąd podczas eksportu"

      # Tooltip for the button at the bottom of the panel which places a guide
      # on the left side of the context.
      tooltipLeftBorder:
        en_us: -> "Left border"
        fr_fr: -> "Bord gauche"
        pt_br: -> "Borda da esquerda"
        es_es: -> "Borde izquierdo"
        pl_pl: -> "Lewy margines"

      # Tooltip for the button at the bottom of the panel which places a guide
      # on the right side of the context.
      tooltipRightBorder:
        en_us: -> "Right border"
        fr_fr: -> "Bord droite"
        pt_br: -> "Borda da direita"
        es_es: -> "Borde derecho"
        pl_pl: -> "Prawy margines"

      # Tooltip for the button at the bottom of the panel which places a guide
      # on the top of the context.
      tooltipTopBorder:
        en_us: -> "Top border"
        fr_fr: -> "Bord supérieur"
        pt_br: -> "Borda superior"
        es_es: -> "Borde superior"
        pl_pl: -> "Górny margines"

      # Tooltip for the button at the bottom of the panel which places a guide
      # on the bottom of the context.
      tooltipBottomBorder:
        en_us: -> "Bottom border"
        fr_fr: -> "Bord inférieur"
        pt_br: -> "Borda inferior"
        es_es: -> "Borde inferior"
        pl_pl: -> "Dolny margines"

      # Tooltip for the button at the bottom of the panel which places a guide
      # in the middle of the context.
      tooltipMidpoint:
        en_us: -> "Midpoint"
        fr_fr: -> "Centre"
        pt_br: -> "Ponto médio"
        es_es: -> "Punto medio"
        pl_pl: -> "Punkt środkowy"

      # Tooltip for the button at the bottom of the panel which clears all
      # guides within the context.
      tooltipClearGuides:
        en_us: -> "Clear guides"
        fr_fr: -> "Effacer les repères"
        pt_br: -> "Limpar guias"
        es_es: -> "Limpiar guías"
        pl_pl: -> "Skasuj linie pomocnicze"

      # Tooltip for the “eye” button to the right of the tabs at the top of the
      # panel which toggles the guide visibility setting.
      tooltipToggleGuideVisibility:
        en_us: -> "Toggle guide visibility"
        fr_fr: -> "Afficher/masquer les repères"
        pt_br: -> "Alternar a visibilidade da guia"
        es_es: -> "Alternar visibilidad de guías"
        pl_pl: -> "Przełącz widoczność wzorca"

      # Message that appears in the description of a GitHub Gist that contains
      # exported guide data.
      #
      # Example: https://gist.github.com/20c8e33534459c722888
      msgGistDescription:
        en_us: -> "This is grid data exported by the GuideGuide plugin."
        fr_fr: -> "
          Voici les données d'une grille exportées par le plugin GuideGuide.
        "
        pt_br: -> "
          Estes são os dados de grids exportados pelo plugin GuideGuide.
        "
        es_es: -> "
          Estos son datos de retícula exportados por el plugin GuideGuide.
        "
        pl_pl: -> "To są dane wzorca wyeksportowane przez wtyczkę GuideGuide."

      # Message that encourages people to buy GuideGuide. Appears in place of
      # the Custom tab after the trial has expired.
      msgCustomUpsell:
        en_us: -> "Buy the full version to create any grid you can think of."
        fr_fr: -> "
          Acheter la version complète pour créer toutes les grilles que vous
          pouvez imaginer.
        "
        pt_br: -> "
          Compre a versão completa para criar qualquer tipo de grid que você
          puder imaginar.
        "
        es_es: -> "
          Compra la versión completa para crear cualquier retícula que puedas
          imaginar.
        "
        pl_pl: -> "Kup pełną wersję i twórz wzorce jakie tylko zapragniesz."

      # Message that encourages people to buy GuideGuide. Appears in place of
      # the Saved tab after the trial has expired.
      msgSavedUpsell:
        en_us: -> "Buy the full version to save the grids you use the most."
        fr_fr: -> "
          Acheter la version complète pour enregistrer les grilles que vous
          utiliser fréquemment.
        "
        pt_br: -> "
          Compre a versão completa para salvar quais grids você mais utiliza.
        "
        es_es: -> "
          Compra la versión completa para guardar tus retículas más habituales.
        "
        pl_pl: -> "
          Kup pełną wersję by móc zapisywać najczęściej używane wzorce.
        "

      # Message that encourages people to buy GuideGuide. Appears at the bottom
      # of all tabs after the trial has expired.
      msgQuickUpsell:
        en_us: -> "Buy the full version to clear and add guides quickly."
        fr_fr: -> "
          Acheter la verison complète pour effacer et ajouter des repères
          facilement.
          "
        pt_br: -> "
          Compre a versão completa para criar e deletar guias de maneira mais
          rápida.
        "
        es_es: -> "
          Compra la versión completa para borrar y añadir guías rápidamente.
        "
        pl_pl: -> "
          Kup pełną wersję by szybko usuwać i dodawać linie pomocnicze.
        "

      # Title for the alert message that appears at launch after the trial
      # expires.
      titleFreeVersion:
        en_us: -> "Free version"
        fr_fr: -> "Version gratuite"
        pt_br: -> "Versão de graça"
        es_es: -> "Versión gratuita"
        pl_pl: -> "Wersja bezpłatna"

      # Message that appears in the alert message that appears at launch after
      # the trial expires.
      msgFreeVersionEnabled:
        en_us: -> "
          You’ve used GuideGuide 30 times! You can buy the full version to renable the full features.
        "
        fr_fr: -> "
          Vous avez utilisé GuideGuide 30 fois ! Vous pouvez acheter la version
          complète pour réactiver toutes les fonctionnalités.
        "
        pt_br: -> "
          Você já usou GuideGuide 30 vezes! Você pode comprar a versão completa
          para reabilitar todas as funcionalidades.
        "
        es_es: -> "
          ¡Has usado GuideGuide 30 veces! Puedes comprar la versión completa para reactivar todas las funcionalidades.
        pl_pl: -> "
          Użyto GuideGuide 30 razy! Możesz teraz kupić pełną wersją.
        "

      # Title of the alert that appears on first launch that requests permission
      # to submit usage data via Google Analytics.
      titleGoogleAnalytics:
        en_us: -> "Submit usage data"
        fr_fr: -> "Collecte des données d'utilisation"
        pt_br: -> "Enviar dados de uso"
        es_es: -> "Enviar datos de uso"
        pl_pl: -> "Wysyłaj informacje o używaniu"

      # Message for the alert that appears on first launch that requests permission
      # to submit usage data via Google Analytics.
      msgGoogleAnalytics:
        en_us: -> "
          Will you allow GuideGuide to use Google Analytics to track anonymous
          usage information to help improve the product?
        "
        fr_fr: -> "
          Autoriser GuideGuide à utiliser Google Analytics pour collecter 
          anonymement des informations d'utilisation et aider à améliorer le 
          plugin ?
        "
        pt_br: -> "
          Você vai permitir que GuideGuide use o Google Analytics para
          acompanhar, de forma anônima, informações da utilização do produto
          para para ajudar a melhorá-lo?
        "
        es_es: -> "
          ¿Permitir a GuideGuide utilizar Google Analytics para mantener un
          registro anónimo de uso con el fin de ayudar a mejorar el producto?
        "
        pl_pl: -> "
          Czy pozwolisz GuideGuide używać Google Analytics do śledzenia
          anonimowych danych używania, aby ulepszyć produkt?
        "

      # Menu item that duplicates all guides in the selected contexts to all
      # documents. Appears in the flyout menu and the history state that results
      # from the action.
      menuDuplicateToOpenDocuments:
        en_us: -> "Duplicate guides to open documents"
        fr_fr: -> "Dupliquer les repères vers les documents ouverts"
        # TODO: pt_br
        # TODO: es_es
        # TODO: pl_pl

      # Menu item that duplicates all guides in the selected contexts to all
      # artboards. Appears in the flyout menu and the history state that results
      # from the action.
      menuDuplicateToArtboards:
        en_us: -> "Duplicate guides to artboards"
        fr_fr: -> "Dupliquer les repères vers les plans de travail"
        # TODO: pt_br
        # TODO: es_es
        # TODO: pl_pl

      # Menu item that clears all guides in the document. Appears in the flyout
      # menu and the history state that results from the action.
      menuClearAllGuides:
        en_us: -> "Clear all guides"
        fr_fr: -> "Effacer tous les repères"
        # TODO: pt_br
        # TODO: es_es
        # TODO: pl_pl

      # Menu item that clears all guides in the currently selected artboards.
      # Appears in the flyout menu and the history state that results from the
      # action.
      menuClearArtboardGuides:
        en_us: -> "Clear selected artboard guides"
        fr_fr: -> "Effacer les repères du plan de travail"
        # TODO: pt_br
        # TODO: es_es
        # TODO: pl_pl

      # Menu item that clears canvas guides. Appears in the flyout menu and the
      # history state that results from the action.
      menuClearCanvasGuides:
        en_us: -> "Clear canvas guides"
        fr_fr: -> "Effacer les repères de la zone de travail"
        # TODO: pt_br
        # TODO: es_es
        # TODO: pl_pl

      # Menu item that clears all vertical guides in a given context. Appears
      # in the flyout menu and the history state that results from the action.
      menuClearVerticalGuides:
        en_us: -> "Clear vertical guides"
        fr_fr: -> "Effacer les repères verticaux"
        # TODO: pt_br
        # TODO: es_es
        # TODO: pl_pl

      # Menu item that clears all horizontal guides in a given context. Appears
      # in the flyout menu and the history state that results from the action.
      menuClearHorizontalGuides:
        en_us: -> "Clear horizontal guides"
        fr_fr: -> "Effacer les repères horizontaux"
        # TODO: pt_br
        # TODO: es_es
        # TODO: pl_pl

      # Menu item that triggers the Google Analytics tracking setting prompt.
      # Appears in the flyout menu.
      menuTrackingSettings:
        en_us: -> "Tracking settings"
        fr_fr: -> "Préférences de suivi"
        # TODO: pt_br
        # TODO: es_es
        # TODO: pl_pl

      # Menu item that opens the GuideGuide installation directory. Appears in
      # the flyout menu.
      menuUninstall:
        en_us: -> "Uninstall"
        fr_fr: -> "Désinstaller"
        # TODO: pt_br
        # TODO: es_es
        # TODO: pl_pl

      # Menu item that toggles debug logging. Appears in the flyout menu.
      menuDebug:
        en_us: -> "Debug"
        fr_fr: -> "Débogage"
        # TODO: pt_br
        # TODO: es_es
        # TODO: pl_pl

      # Menu item that will open guideguide.me. Appears in the flyout menu of
      # the trial version.
      menuBuyGuideGuide:
        en_us: -> "Buy GuideGuide"
        fr_fr: -> "Acheter GuideGuide"
        # TODO: pt_br
        # TODO: es_es
        # TODO: pl_pl

      # Label for the history state that appears in documents in which guides
      # have been copied *to*. Will appear like:
      #
      #   “Duplicate guides from MyCoolDoc.psd”
      historyDuplicateGuidesFrom:
        en_us: -> "Duplicate guides from"
        fr_fr: -> "Dupliquer les repères à partir de"
        # TODO: pt_br
        # TODO: es_es
        # TODO: pl_pl


      # Error message that appears when a user attempts to import a non-json
      # file. Appears in the import modal.
      errNotJSON:
        en_us: -> "Selected file must be a .json file"
        fr_fr: -> "Le fichier doit être au format .json"
        pt_br: -> "O arquivo selecionado tem que ser um arquivo .json"
        es_es: -> "El fichero seleccionado debe ser un fichero .json"
        pl_pl: -> "Wybrany plik musi być plikiem .json"

      # Error message that appears when when a chosen import file cannot be
      # read. Appears in the import modal.
      errFileRead:
        en_us: -> "Selected file could not be read"
        fr_fr: -> "Le fichier n'a pas pu être lu"
        pt_br: -> "O arquivo selecionado não pode ser lido"
        es_es: -> "El fichero seleccionado no pudo leerse"
        pl_pl: -> "Nie można odczytać wybranego pliku"

      # Error that appears when grid notation does not recognize a command.
      #
      # http://guideguide.me/documentation/grid-notation#errors
      gnError1:
        en_us: -> "Unrecognized command"
        fr_fr: -> "Commande inconnue"
        pt_br: -> "Comando não reconhecido"
        es_es: -> "Comando no reconocido"
        pl_pl: -> "Nierozpoznana komenda"

      # Error that appears when a user attempts to use an empty string in the
      # custom form.
      #
      # http://guideguide.me/documentation/grid-notation#errors
      gnError2:
        en_us: -> "This string does not contain any grids"
        fr_fr: -> "La synthaxe ne contient aucune grille"
        pt_br: -> "Este arquivo não contém nenhum grid"
        es_es: -> "Esta cadena no contiene ninguna retícula"
        pl_pl: -> "Ten ciąg znaków nie zawiera żadnych wzorców"

      # Error that appears when a grid notation variable contains a wildcard.
      # Variable refers to a property that is defined with a dynamic value,
      # similar to a variable in code. Wildard refers to a value which has no
      # intrinsic measuremnt until the grid notation is processed. It
      # effectively means “divide the left over space evenly between this and
      # all other wildcards like it.”
      #
      # http://guideguide.me/documentation/grid-notation#errors
      gnError3:
        en_us: -> "Variables used as fills cannot contain wildcards"
        fr_fr: -> "
          Les variables utilisées comme itération ne peuvent pas contient de
          métacaractère
        "
        pt_br: -> "As variáveis não podem conter wildcards (*)"
        es_es: -> "
          Las variables usadas como relleno no pueden contener wildcards
        "
        pl_pl: -> "Zmienne używane do wypełniania nie mogą zawierać wieloznaczników"

      # Error that appears when a grid notation string contains more than one
      # fill. Fill refers to a command that effectively means “Do this thing as
      # many times as will fit.” For example, a 3px fill can fit 3 time in a
      # 10px area.
      #
      # http://guideguide.me/documentation/grid-notation#errors
      gnError4:
        en_us: -> "A grid cannot contain more than one fill"
        fr_fr: -> "Une grille ne peut contenir qu'une seule itération"
        pt_br: -> "Um grid não pode conter mais do que um valor"
        es_es: -> "Una retícula no puede contener más de un relleno"
        pl_pl: -> "Wzorzec nie może zawierać więcej niż jednego wypełnienia"

      # Error that appears when a grid notation variable contains a fill
      # command. Variable refers to a property that is defined with a dynamic
      # value, similar to a variable in code. Fill refers to a command that
      # effectively means “Do this thing as many times as will fit.” For
      # example, a 3px fill can fit 3 time in a 10px area.
      #
      # http://guideguide.me/documentation/grid-notation#errors
      gnError5:
        en_us: -> "Variables cannot contain fills"
        fr_fr: -> "Les variables ne peuvent pas contenir d'itération"
        pt_br: -> "As variáveis não podem ser preenchidas"
        es_es: -> "Las variables no pueden contener rellenos"
        pl_pl: -> "Zmienne nie mogą zawierać wypełnień"

      # Error that appears when a variable is used before its value has been
      # defined. Variable refers to a property that is defined with a dynamic
      # value, similar to a variable in code.
      #
      # http://guideguide.me/documentation/grid-notation#errors
      gnError6:
        en_us: -> "Undefined variable"
        fr_fr: -> "Variable indéfinie"
        pt_br: -> "Variável indefinida"
        es_es: -> "Variable indefinida"
        pl_pl: -> "Niezdefiniowana zmienna"
