translations = {
    "English": {
        "greeting": "Hello!",
        "goodbye": "Goodbye!",
        "settings_applied": "Settings applied successfully!"
    },
    "Spanish": {
        "greeting": "¡Hola!",
        "goodbye": "¡Adiós!",
        "settings_applied": "¡Configuraciones aplicadas exitosamente!"
    },
    "French": {
        "greeting": "Bonjour!",
        "goodbye": "Au revoir!",
        "settings_applied": "Paramètres appliqués avec succès !"
    }
}

current_language = "English"

def change_language(selected_language):
    global current_language
    current_language = selected_language

def get_translation(key):
    global current_language
    if current_language in translations and key in translations[current_language]:
        return translations[current_language][key]
    else:
        return ""
