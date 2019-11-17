<?php

class validation
{
    public function testuser($data)
    {
        $data = trim($data);
        $data = stripslashes($data);
        $data = htmlspecialchars($data);
        return $data;
    }

    public function validate($string, $validation_method)
    {
        switch ($validation_method) {
            case 'username';
                filter_var($string, FILTER_SANITIZE_STRING);
                return true;
                break;
            case 'int';
                if (is_numeric($string) or is_null($string)) {
                    return true;
                } else {
                    return false;
                }
                break;
            case 'char';
                if (ctype_alpha($string)) {
                    return true;
                } else {
                    return false;
                }
                break;
            case 'alphanum';
                if (ctype_alnum($string)) {
                    return true;
                } else {
                    return false;
                }
                break;
            case 'email';
                if (filter_var($string, FILTER_VALIDATE_EMAIL)) {
                    return true;
                } else {
                    return false;
                }

                break;
            default:
                return false;
        }
        return $string;
    }
};

$validation = new validation;

?>

