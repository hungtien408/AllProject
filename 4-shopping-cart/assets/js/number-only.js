// Chỉ Nhập Số
function numeralsOnly(evt) {
    evt = (evt) ? evt : event;
    var charCode = (evt.charCode) ? evt.charCode : ((evt.keyCode) ? evt.keyCode : ((evt.which) ? evt.which : 0));
    if (charCode > 31 && (charCode < 48 || charCode > 57)) {
        alert("Chỉ nhập số!");
        return false;
    }
    return true;

    //onkeypress="return letters_Number_Defined(event)"
}