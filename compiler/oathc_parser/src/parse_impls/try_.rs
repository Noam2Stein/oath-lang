use super::*;

impl<T: ParseDesc> OptionParse for Try<T> {
    fn option_parse(parser: &mut impl Tokenizer, output: &mut Option<Self>) -> ParseExit {
        let mut option = None;
        let exit = T::option_parse(parser, &mut option);

        *output = option.map(|value| Self::Success(value));

        exit
    }

    fn detect(parser: &impl Tokenizer) -> Detection {
        T::detect(parser)
    }
}
impl<T: ParseDesc> Parse for Try<T> {
    fn parse(parser: &mut impl Tokenizer, output: &mut Self) -> ParseExit {
        let mut option = None;
        let exit = T::option_parse(parser, &mut option);

        if let Some(option) = option {
            *output = Try::Success(option);

            exit
        } else {
            let span = parser.peek_span();

            *output = Try::Failure(Some(parser.diagnostics().push_error(Error::Expected(span, T::desc()))));

            ParseExit::Cut
        }
    }

    fn parse_error() -> Self {
        Try::Failure(None)
    }
}
