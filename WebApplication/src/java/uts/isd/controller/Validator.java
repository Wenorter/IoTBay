package uts.isd.controller;

import java.io.Serializable;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Validator implements Serializable {

    private String emailPattern = "([a-zA-Z0-9]+)(([._-])([a-zA-Z0-9]+))*(@)([a-z]+)(.)([a-z]{3})((([.])[a-z]{0,2})*)";
    private String mobilePattern = "[0-9]{8,10}";
    private String passwordPattern = ".{8,}";
    private String cardNoPattern = "[0-9]{16}";
    private String paymentid = "[0-9]{1,10}";
    private String datepattern = "[0-9]{4}-[0-9]{2}-[0-9]{2}";

    public Validator() {
    }

    public boolean validate(String pattern, String input) {
        Pattern regEx = Pattern.compile(pattern);
        Matcher match = regEx.matcher(input);
        return match.matches();
    }

    public boolean validateEmail(String email) {
        return validate(emailPattern, email);
    }

    public boolean validatePassword(String password) {
        return validate(passwordPattern, password);
    }

    public boolean validateMobile(String password) {
        return validate(mobilePattern, password);
    }

    public boolean isLoginEmpty(String email, String password) {
        return email.isEmpty() || password.isEmpty();
    }

    public boolean isFieldEmpty(String field) {
        return field.isEmpty();
    }

    public boolean validatecardNo(String cardNo) {
        return validate(cardNoPattern, cardNo);
    }

    public boolean validatepaymentID(String ID) {
        return validate(paymentid, ID);
    }

    public boolean validatedate(String date) {
        return validate(datepattern, date);
    }
}
