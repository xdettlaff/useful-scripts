from translate import Translator
import pynput
from pynput.keyboard import Key, Controller
import pyclip
from notify import notification

keyboard = Controller()
translator = Translator(to_lang="ru")

with keyboard.pressed(Key.ctrl):
    keyboard.press('c')
    keyboard.release('c')

result = translator.translate(pyclip.paste(text=True))

notification('Перевод на русский:', message=result, app_name='Born2copy')
