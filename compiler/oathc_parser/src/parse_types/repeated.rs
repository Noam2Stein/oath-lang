use super::*;

pub struct Repeated<T: OptionParse> {
    values: Vec<T>,
}

impl<T: OptionParse> OptionParse for Repeated<T> {
    fn option_parse(parser: &mut impl Tokenizer, output: &mut Option<Self>) -> ParseExit {
        let mut option = Self::parse_error();
        let exit = Self::parse(parser, &mut option);

        *output = Some(option);

        exit
    }

    fn detect(parser: &impl Tokenizer) -> Detection {
        match T::detect(parser) {
            Detection::Detected => Detection::Detected,
            Detection::NotDetected => Detection::EmptyDetected,
            Detection::EmptyDetected => Detection::EmptyDetected,
        }
    }
}
impl<T: OptionParse> Parse for Repeated<T> {
    fn parse(parser: &mut impl Tokenizer, output: &mut Self) -> ParseExit {
        loop {
            if T::detect(parser) != Detection::Detected {
                break ParseExit::Complete;
            }

            let mut item = None;
            let item_exit = T::option_parse(parser, &mut item);

            if let Some(item) = item {
                output.values.push(item);

                if item_exit == ParseExit::Cut {
                    return ParseExit::Cut;
                }
            } else {
                return item_exit;
            }
        }
    }

    fn parse_error() -> Self {
        Self { values: Vec::new() }
    }
}

impl<T: OptionParse> Into<Vec<T>> for Repeated<T> {
    fn into(self) -> Vec<T> {
        self.values
    }
}
