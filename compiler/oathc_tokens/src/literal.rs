use super::*;

#[derive(Debug, Spanned, InternedDisplay)]
pub enum Literal {
    Char(CharLiteral),
    Float(FloatLiteral),
    Int(IntLiteral),
    Str(StrLiteral),
}

const _: () = verify_token_type::<Literal>();

#[derive(Debug, InternedDisplay)]
pub struct LiteralSuffix {
    pub ident: Try<Ident>,
}
