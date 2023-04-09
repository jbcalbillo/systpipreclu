<h1><?php echo __('Forgot My Password'); ?></h1>
<p><?php echo __(
'Enter your username or email address in the form below and press the <strong>Send Email</strong> button to have a password reset link sent to your email account on file.');
?>

<form action="pwreset.php" method="post" id="clientLogin">
<div style="width:50%;display:inline-block"><?php echo __(
    'Si la información proporcionada es válida, se enviará un correo electrónico de restablecimiento de contraseña a la dirección de correo electrónico que tienes registrada. Si no recibes el correo electrónico o tienes problemas para restablecer tu contraseña, comunícate con soporte reclutamiento.'
); ?>
    </div>
</form>
