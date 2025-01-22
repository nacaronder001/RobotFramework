from robot.api.deco import library, keyword
from robot.libraries.BuiltIn import BuiltIn


@library
class Shop:


    def __init__(self):
        self.selLibrary = BuiltIn().get_library_instance("SeleniumLibrary")



    @keyword
    def purchasing_multiple_phones(self, cardtitles):
        index = 1
        phone_list = self.selLibrary.get_webelements("CSS:.card-title")
        for phone in phone_list:
            if phone.text in cardtitles:
                self.selLibrary.click_element("XPATH:(//button[@class='btn btn-info'])["+str(index)+"]")
            index += 1
        self.selLibrary.click_link("CSS:li.active a")