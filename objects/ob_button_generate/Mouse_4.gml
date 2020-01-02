/// @desc Generate and show in caption
switch generation_mode {
	case 0:
		caption = sc_generate()
		break;
	case 1:
		caption = sc_lexicon_use()
		break;
}
