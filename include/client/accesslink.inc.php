<?php
if(!defined('OSTCLIENTINC')) die('Access Denied');

$email=Format::input($_POST['lemail']?$_POST['lemail']:$_GET['e']);
$ticketid=Format::input($_POST['lticket']?$_POST['lticket']:$_GET['t']);

if ($cfg->isClientEmailVerificationRequired())
    $button = __("Email Access Link");
else
    $button = __("View Ticket");
?>
<h1><?php echo __('Check Ticket Status'); ?></h1>
<p><?php
echo __('Proporciona la dirección de e-mail de quien genero el ticket y el número de ticket.');
if ($cfg->isClientEmailVerificationRequired())
    echo ' '.__('An access link will be emailed to you.');
else
    echo ' '.__('Accederás como usuario visualizador para visualizar los detalles del ticket.');
?>
 <?php echo __("¿Tienes dudas de cómo hacerlo?"); ?></b> <br>
    <a href="https://drive.google.com/file/d/1vOo6n8UN1rCiMn9jyIdSzJyd_nkexElV/view?usp=share_link" target="_blank"><?php echo __('Checa este manual y aprende a usar la herramienta de búsqueda de Tickets'); ?></a>   
</p>
<form action="login.php" method="post" id="clientLogin">
    <?php csrf_token(); ?>
<div style="display:table-row">
    <div class="login-box">
    <div><strong><?php echo Format::htmlchars($errors['login']); ?></strong></div>
    <div>
        <label for="email"><?php echo __('Email Address'); ?>:
        <input id="email" placeholder="<?php echo __('e.j. juan.barrios@it-strategy.x'); ?>" type="text"
            name="lemail" size="30" value="<?php echo $email; ?>" class="nowarn"></label>
    </div>
    <div>
        <label for="ticketno"><?php echo __('Ticket Number'); ?>:
        <input id="ticketno" type="text" name="lticket" placeholder="<?php echo __('e.j. CSI-PIP-1111'); ?>"
            size="30" value="<?php echo $ticketid; ?>" class="nowarn"></label>
    </div>
    <p>
        <input class="btn" type="submit" value="<?php echo $button; ?>">
    </p>
    </div>
    <div class="instructions">
<?php if ($cfg && $cfg->getClientRegistrationMode() !== 'disabled') { ?>
        <?php echo __('¿Tiene una cuenta con nosotros?'); ?>
        <a href="login.php"><?php echo __('Inicia sesión'); ?></a> <?php
    if ($cfg->isClientRegistrationEnabled()) { ?>
<?php echo sprintf(__('o %s registrate%s para crear y acceder a todos tus Tickets.'),
    '<a href="account.php?do=create">','</a>');
    }
}?>
    </div>
</div>
</form>
<br>
<p>
<?php
if ($cfg->getClientRegistrationMode() != 'disabled'
    || !$cfg->isClientLoginRequired()) {
    echo sprintf(
    __("Si es la primera vez que te pones en contacto con nosotros o perdiste el número de Ticket, ponte en contacto con soporte reclutamiento o si deseas registrarte %s da clic aquí para abrir un nuevo Ticket %s"),
        '<a href="open.php">','</a>');
} ?>
</p>
