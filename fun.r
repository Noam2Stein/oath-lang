#![feature(prelude_import)]
#[prelude_import]
use std::prelude::rust_2024::*;
#[macro_use]
extern crate std;
use std::fmt::Debug;
use oathc_diagnostics::*;
use oathc_highlighting::*;
use oathc_parser::*;
use oathc_span::*;
use oathc_tokenizer::*;
use oathc_tokens::*;
mod attr {
    use super::*;
    #[desc = "an attribute"]
    pub struct Attr {
        pub hash: HashPunct,
        pub body: Try<AttrBody>,
    }
    #[automatically_derived]
    impl ::core::fmt::Debug for Attr {
        #[inline]
        fn fmt(&self, f: &mut ::core::fmt::Formatter) -> ::core::fmt::Result {
            ::core::fmt::Formatter::debug_struct_field2_finish(
                f,
                "Attr",
                "hash",
                &self.hash,
                "body",
                &&self.body,
            )
        }
    }
    impl OptionParse for Attr {
        fn option_parse(
            parser: &mut impl Tokenizer,
            output: &mut Option<Self>,
        ) -> ParseExit {
            {
                #[allow(unused_labels)]
                'option_parse_fields: {
                    if 'detect_fields: {
                        match <HashPunct as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        match <Try<AttrBody> as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    } == Detection::NotDetected
                    {
                        break 'option_parse_fields ParseExit::Complete;
                    }
                    let mut primary_field = None;
                    let primary_field_exit = {
                        let exit = <HashPunct as OptionParse>::option_parse(
                            parser,
                            &mut primary_field,
                        );
                        exit
                    };
                    let primary_field = primary_field.unwrap();
                    let mut secondary_field_0 = <Try<AttrBody> as Parse>::parse_error();
                    if primary_field_exit == ParseExit::Cut {
                        *output = Some(Self {
                            hash: primary_field,
                            body: secondary_field_0,
                        });
                        break 'option_parse_fields ParseExit::Cut;
                    }
                    match {
                        let exit = <Try<
                            AttrBody,
                        > as Parse>::parse(parser, &mut secondary_field_0);
                        exit
                    } {
                        ParseExit::Complete => {}
                        ParseExit::Cut => {
                            *output = Some(Self {
                                hash: primary_field,
                                body: secondary_field_0,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                    }
                    *output = Some(Self {
                        hash: primary_field,
                        body: secondary_field_0,
                    });
                    ParseExit::Complete
                }
            }
        }
        fn detect(parser: &impl Tokenizer) -> Detection {
            'detect_fields: {
                match <HashPunct as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                match <Try<AttrBody> as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                Detection::NotDetected
            }
        }
    }
    impl ParseDesc for Attr {
        fn desc() -> &'static str {
            "an attribute"
        }
    }
    #[desc = "an attribute"]
    pub struct InnerAttr {
        pub hash: HashExclamationPunct,
        pub body: Try<AttrBody>,
    }
    #[automatically_derived]
    impl ::core::fmt::Debug for InnerAttr {
        #[inline]
        fn fmt(&self, f: &mut ::core::fmt::Formatter) -> ::core::fmt::Result {
            ::core::fmt::Formatter::debug_struct_field2_finish(
                f,
                "InnerAttr",
                "hash",
                &self.hash,
                "body",
                &&self.body,
            )
        }
    }
    impl OptionParse for InnerAttr {
        fn option_parse(
            parser: &mut impl Tokenizer,
            output: &mut Option<Self>,
        ) -> ParseExit {
            {
                #[allow(unused_labels)]
                'option_parse_fields: {
                    if 'detect_fields: {
                        match <HashExclamationPunct as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        match <Try<AttrBody> as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    } == Detection::NotDetected
                    {
                        break 'option_parse_fields ParseExit::Complete;
                    }
                    let mut primary_field = None;
                    let primary_field_exit = {
                        let exit = <HashExclamationPunct as OptionParse>::option_parse(
                            parser,
                            &mut primary_field,
                        );
                        exit
                    };
                    let primary_field = primary_field.unwrap();
                    let mut secondary_field_0 = <Try<AttrBody> as Parse>::parse_error();
                    if primary_field_exit == ParseExit::Cut {
                        *output = Some(Self {
                            hash: primary_field,
                            body: secondary_field_0,
                        });
                        break 'option_parse_fields ParseExit::Cut;
                    }
                    match {
                        let exit = <Try<
                            AttrBody,
                        > as Parse>::parse(parser, &mut secondary_field_0);
                        exit
                    } {
                        ParseExit::Complete => {}
                        ParseExit::Cut => {
                            *output = Some(Self {
                                hash: primary_field,
                                body: secondary_field_0,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                    }
                    *output = Some(Self {
                        hash: primary_field,
                        body: secondary_field_0,
                    });
                    ParseExit::Complete
                }
            }
        }
        fn detect(parser: &impl Tokenizer) -> Detection {
            'detect_fields: {
                match <HashExclamationPunct as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                match <Try<AttrBody> as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                Detection::NotDetected
            }
        }
    }
    impl ParseDesc for InnerAttr {
        fn desc() -> &'static str {
            "an attribute"
        }
    }
    #[desc = "`[ ]`"]
    #[framed]
    pub struct AttrBody {
        pub frame: Frame<Brackets>,
        pub ident: Try<Ident>,
        pub value: Option<AttrInput>,
    }
    #[automatically_derived]
    impl ::core::fmt::Debug for AttrBody {
        #[inline]
        fn fmt(&self, f: &mut ::core::fmt::Formatter) -> ::core::fmt::Result {
            ::core::fmt::Formatter::debug_struct_field3_finish(
                f,
                "AttrBody",
                "frame",
                &self.frame,
                "ident",
                &self.ident,
                "value",
                &&self.value,
            )
        }
    }
    impl OptionParse for AttrBody {
        fn option_parse(
            parser: &mut impl Tokenizer,
            output: &mut Option<Self>,
        ) -> ParseExit {
            {
                let mut frame_output = None;
                let parse_exit = <Frame<
                    Brackets,
                >>::option_parse_frame(
                    parser,
                    &mut frame_output,
                    |parser| {
                        #[allow(unused_parens)]
                        let (mut field_1, mut field_2) = (
                            <Try<Ident> as Parse>::parse_error(),
                            <Option<AttrInput> as Parse>::parse_error(),
                        );
                        #[allow(unused_labels)]
                        let parse_exit = 'parse_fields: {
                            match {
                                let exit = <Try<
                                    Ident,
                                > as Parse>::parse(parser, &mut field_1);
                                exit
                            } {
                                ParseExit::Complete => {}
                                ParseExit::Cut => {
                                    break 'parse_fields ParseExit::Cut;
                                }
                            }
                            match {
                                let exit = <Option<
                                    AttrInput,
                                > as Parse>::parse(parser, &mut field_2);
                                exit
                            } {
                                ParseExit::Complete => {}
                                ParseExit::Cut => {
                                    break 'parse_fields ParseExit::Cut;
                                }
                            }
                            ParseExit::Complete
                        };
                        ((field_1, field_2), parse_exit)
                    },
                    |parser| {
                        #[allow(unused_parens)]
                        let (mut field_1, mut field_2) = (
                            <Try<Ident> as Parse>::parse_error(),
                            <Option<AttrInput> as Parse>::parse_error(),
                        );
                        #[allow(unused_labels)]
                        let parse_exit = 'parse_fields: {
                            match {
                                let exit = <Try<
                                    Ident,
                                > as Parse>::parse(parser, &mut field_1);
                                exit
                            } {
                                ParseExit::Complete => {}
                                ParseExit::Cut => {
                                    break 'parse_fields ParseExit::Cut;
                                }
                            }
                            match {
                                let exit = <Option<
                                    AttrInput,
                                > as Parse>::parse(parser, &mut field_2);
                                exit
                            } {
                                ParseExit::Complete => {}
                                ParseExit::Cut => {
                                    break 'parse_fields ParseExit::Cut;
                                }
                            }
                            ParseExit::Complete
                        };
                        ((field_1, field_2), parse_exit)
                    },
                );
                #[allow(unused_parens)]
                if let Some((frame, (field_1, field_2))) = frame_output {
                    *output = Some(Self {
                        frame: frame,
                        ident: field_1,
                        value: field_2,
                    });
                }
                parse_exit
            }
        }
        fn detect(parser: &impl Tokenizer) -> Detection {
            <Frame<Brackets>>::detect_frame(parser)
        }
    }
    impl ParseDesc for AttrBody {
        fn desc() -> &'static str {
            "`[ ]`"
        }
    }
    #[desc = "a meta value"]
    pub enum AttrInput {
        Fn(Tuple),
        Set(Set),
    }
    #[automatically_derived]
    impl ::core::fmt::Debug for AttrInput {
        #[inline]
        fn fmt(&self, f: &mut ::core::fmt::Formatter) -> ::core::fmt::Result {
            match self {
                AttrInput::Fn(__self_0) => {
                    ::core::fmt::Formatter::debug_tuple_field1_finish(f, "Fn", &__self_0)
                }
                AttrInput::Set(__self_0) => {
                    ::core::fmt::Formatter::debug_tuple_field1_finish(
                        f,
                        "Set",
                        &__self_0,
                    )
                }
            }
        }
    }
    impl OptionParse for AttrInput {
        fn option_parse(
            parser: &mut impl Tokenizer,
            output: &mut Option<Self>,
        ) -> ParseExit {
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <Tuple as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <Tuple as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::Fn { 0: primary_field });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::Fn { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <Set as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <Set as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::Set { 0: primary_field });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::Set { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            ParseExit::Complete
        }
        fn detect(parser: &impl Tokenizer) -> Detection {
            'detect_enum: {
                Detection::NotDetected
                    | 'detect_fields: {
                        match <Tuple as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
                    | 'detect_fields: {
                        match <Set as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
            }
        }
    }
    impl ParseDesc for AttrInput {
        fn desc() -> &'static str {
            "a meta value"
        }
    }
}
mod block {
    use derive_more::Debug;
    use super::*;
    #[desc = "`{ }`"]
    #[framed]
    pub struct Block {
        pub frame: Frame<Braces>,
        #[parse_as(Repeated<_>)]
        pub stmts: Vec<Stmt>,
    }
    #[allow(unreachable_code)]
    #[automatically_derived]
    impl derive_more::core::fmt::Debug for Block {
        #[inline]
        fn fmt(
            &self,
            __derive_more_f: &mut derive_more::core::fmt::Formatter<'_>,
        ) -> derive_more::core::fmt::Result {
            let frame = &self.frame;
            let stmts = &self.stmts;
            derive_more::core::fmt::DebugStruct::finish(
                derive_more::core::fmt::DebugStruct::field(
                    derive_more::core::fmt::DebugStruct::field(
                        &mut derive_more::core::fmt::Formatter::debug_struct(
                            __derive_more_f,
                            "Block",
                        ),
                        "frame",
                        &frame,
                    ),
                    "stmts",
                    &stmts,
                ),
            )
        }
    }
    impl OptionParse for Block {
        fn option_parse(
            parser: &mut impl Tokenizer,
            output: &mut Option<Self>,
        ) -> ParseExit {
            {
                let mut frame_output = None;
                let parse_exit = <Frame<
                    Braces,
                >>::option_parse_frame(
                    parser,
                    &mut frame_output,
                    |parser| {
                        #[allow(unused_parens)]
                        let (mut field_1) = (<Repeated<
                            _,
                        > as Into<
                            Vec<Stmt>,
                        >>::into(<Repeated<_> as Parse>::parse_error()));
                        #[allow(unused_labels)]
                        let parse_exit = 'parse_fields: {
                            match {
                                let exit = {
                                    let mut temp_output = <Repeated<_> as Parse>::parse_error();
                                    let exit = <Repeated<
                                        _,
                                    > as Parse>::parse(parser, &mut temp_output);
                                    *&mut field_1 = <Repeated<
                                        _,
                                    > as Into<Vec<Stmt>>>::into(temp_output);
                                    exit
                                };
                                exit
                            } {
                                ParseExit::Complete => {}
                                ParseExit::Cut => {
                                    break 'parse_fields ParseExit::Cut;
                                }
                            }
                            ParseExit::Complete
                        };
                        ((field_1), parse_exit)
                    },
                    |parser| {
                        #[allow(unused_parens)]
                        let (mut field_1) = (<Repeated<
                            _,
                        > as Into<
                            Vec<Stmt>,
                        >>::into(<Repeated<_> as Parse>::parse_error()));
                        #[allow(unused_labels)]
                        let parse_exit = 'parse_fields: {
                            match {
                                let exit = {
                                    let mut temp_output = <Repeated<_> as Parse>::parse_error();
                                    let exit = <Repeated<
                                        _,
                                    > as Parse>::parse(parser, &mut temp_output);
                                    *&mut field_1 = <Repeated<
                                        _,
                                    > as Into<Vec<Stmt>>>::into(temp_output);
                                    exit
                                };
                                exit
                            } {
                                ParseExit::Complete => {}
                                ParseExit::Cut => {
                                    break 'parse_fields ParseExit::Cut;
                                }
                            }
                            ParseExit::Complete
                        };
                        ((field_1), parse_exit)
                    },
                );
                #[allow(unused_parens)]
                if let Some((frame, (field_1))) = frame_output {
                    *output = Some(Self {
                        frame: frame,
                        stmts: field_1,
                    });
                }
                parse_exit
            }
        }
        fn detect(parser: &impl Tokenizer) -> Detection {
            <Frame<Braces>>::detect_frame(parser)
        }
    }
    impl ParseDesc for Block {
        fn desc() -> &'static str {
            "`{ }`"
        }
    }
    #[desc = "a statement"]
    pub enum Stmt {
        Item(Item),
        Let(LetStmt),
        Eval(ControlStmt<EvalKeyword>),
        Return(ControlStmt<ReturnKeyword>),
        Break(ControlStmt<BreakKeyword>),
        Continue(ControlStmt<ContinueKeyword>),
        Expr(ExprStmt),
    }
    #[allow(unreachable_code)]
    #[automatically_derived]
    impl derive_more::core::fmt::Debug for Stmt {
        #[inline]
        fn fmt(
            &self,
            __derive_more_f: &mut derive_more::core::fmt::Formatter<'_>,
        ) -> derive_more::core::fmt::Result {
            match self {
                Self::Item(_0) => {
                    derive_more::__private::DebugTuple::finish(
                        derive_more::__private::DebugTuple::field(
                            &mut derive_more::__private::debug_tuple(
                                __derive_more_f,
                                "Item",
                            ),
                            &_0,
                        ),
                    )
                }
                Self::Let(_0) => {
                    derive_more::__private::DebugTuple::finish(
                        derive_more::__private::DebugTuple::field(
                            &mut derive_more::__private::debug_tuple(
                                __derive_more_f,
                                "Let",
                            ),
                            &_0,
                        ),
                    )
                }
                Self::Eval(_0) => {
                    derive_more::__private::DebugTuple::finish(
                        derive_more::__private::DebugTuple::field(
                            &mut derive_more::__private::debug_tuple(
                                __derive_more_f,
                                "Eval",
                            ),
                            &_0,
                        ),
                    )
                }
                Self::Return(_0) => {
                    derive_more::__private::DebugTuple::finish(
                        derive_more::__private::DebugTuple::field(
                            &mut derive_more::__private::debug_tuple(
                                __derive_more_f,
                                "Return",
                            ),
                            &_0,
                        ),
                    )
                }
                Self::Break(_0) => {
                    derive_more::__private::DebugTuple::finish(
                        derive_more::__private::DebugTuple::field(
                            &mut derive_more::__private::debug_tuple(
                                __derive_more_f,
                                "Break",
                            ),
                            &_0,
                        ),
                    )
                }
                Self::Continue(_0) => {
                    derive_more::__private::DebugTuple::finish(
                        derive_more::__private::DebugTuple::field(
                            &mut derive_more::__private::debug_tuple(
                                __derive_more_f,
                                "Continue",
                            ),
                            &_0,
                        ),
                    )
                }
                Self::Expr(_0) => {
                    derive_more::__private::DebugTuple::finish(
                        derive_more::__private::DebugTuple::field(
                            &mut derive_more::__private::debug_tuple(
                                __derive_more_f,
                                "Expr",
                            ),
                            &_0,
                        ),
                    )
                }
            }
        }
    }
    impl OptionParse for Stmt {
        fn option_parse(
            parser: &mut impl Tokenizer,
            output: &mut Option<Self>,
        ) -> ParseExit {
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <Item as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <Item as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::Item { 0: primary_field });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::Item { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <LetStmt as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <LetStmt as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::Let { 0: primary_field });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::Let { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <ControlStmt<
                                EvalKeyword,
                            > as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <ControlStmt<
                                EvalKeyword,
                            > as OptionParse>::option_parse(parser, &mut primary_field);
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::Eval { 0: primary_field });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::Eval { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <ControlStmt<
                                ReturnKeyword,
                            > as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <ControlStmt<
                                ReturnKeyword,
                            > as OptionParse>::option_parse(parser, &mut primary_field);
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::Return {
                                0: primary_field,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::Return { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <ControlStmt<
                                BreakKeyword,
                            > as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <ControlStmt<
                                BreakKeyword,
                            > as OptionParse>::option_parse(parser, &mut primary_field);
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::Break {
                                0: primary_field,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::Break { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <ControlStmt<
                                ContinueKeyword,
                            > as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <ControlStmt<
                                ContinueKeyword,
                            > as OptionParse>::option_parse(parser, &mut primary_field);
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::Continue {
                                0: primary_field,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::Continue { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <ExprStmt as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <ExprStmt as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::Expr { 0: primary_field });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::Expr { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            ParseExit::Complete
        }
        fn detect(parser: &impl Tokenizer) -> Detection {
            'detect_enum: {
                Detection::NotDetected
                    | 'detect_fields: {
                        match <Item as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
                    | 'detect_fields: {
                        match <LetStmt as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
                    | 'detect_fields: {
                        match <ControlStmt<EvalKeyword> as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
                    | 'detect_fields: {
                        match <ControlStmt<
                            ReturnKeyword,
                        > as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
                    | 'detect_fields: {
                        match <ControlStmt<
                            BreakKeyword,
                        > as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
                    | 'detect_fields: {
                        match <ControlStmt<
                            ContinueKeyword,
                        > as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
                    | 'detect_fields: {
                        match <ExprStmt as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
            }
        }
    }
    impl ParseDesc for Stmt {
        fn desc() -> &'static str {
            "a statement"
        }
    }
    #[desc = "a statement"]
    pub struct LetStmt {
        pub keyword: LetKeyword,
        #[highlight(HighlightColor::Cyan)]
        pub name: Try<Param>,
        pub value: Option<Set>,
        pub semi: Try<SemiPunct>,
    }
    #[allow(unreachable_code)]
    #[automatically_derived]
    impl derive_more::core::fmt::Debug for LetStmt {
        #[inline]
        fn fmt(
            &self,
            __derive_more_f: &mut derive_more::core::fmt::Formatter<'_>,
        ) -> derive_more::core::fmt::Result {
            let keyword = &self.keyword;
            let name = &self.name;
            let value = &self.value;
            let semi = &self.semi;
            derive_more::core::fmt::DebugStruct::finish(
                derive_more::core::fmt::DebugStruct::field(
                    derive_more::core::fmt::DebugStruct::field(
                        derive_more::core::fmt::DebugStruct::field(
                            derive_more::core::fmt::DebugStruct::field(
                                &mut derive_more::core::fmt::Formatter::debug_struct(
                                    __derive_more_f,
                                    "LetStmt",
                                ),
                                "keyword",
                                &keyword,
                            ),
                            "name",
                            &name,
                        ),
                        "value",
                        &value,
                    ),
                    "semi",
                    &semi,
                ),
            )
        }
    }
    impl OptionParse for LetStmt {
        fn option_parse(
            parser: &mut impl Tokenizer,
            output: &mut Option<Self>,
        ) -> ParseExit {
            {
                #[allow(unused_labels)]
                'option_parse_fields: {
                    if 'detect_fields: {
                        match <LetKeyword as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        match <Try<Param> as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        match <Option<Set> as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        match <Try<SemiPunct> as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    } == Detection::NotDetected
                    {
                        break 'option_parse_fields ParseExit::Complete;
                    }
                    let mut primary_field = None;
                    let primary_field_exit = {
                        let exit = <LetKeyword as OptionParse>::option_parse(
                            parser,
                            &mut primary_field,
                        );
                        exit
                    };
                    let primary_field = primary_field.unwrap();
                    let mut secondary_field_0 = <Try<Param> as Parse>::parse_error();
                    let mut secondary_field_1 = <Option<Set> as Parse>::parse_error();
                    let mut secondary_field_2 = <Try<SemiPunct> as Parse>::parse_error();
                    if primary_field_exit == ParseExit::Cut {
                        *output = Some(Self {
                            keyword: primary_field,
                            name: secondary_field_0,
                            value: secondary_field_1,
                            semi: secondary_field_2,
                        });
                        break 'option_parse_fields ParseExit::Cut;
                    }
                    match {
                        let exit = <Try<
                            Param,
                        > as Parse>::parse(parser, &mut secondary_field_0);
                        <Try<
                            Param,
                        > as Highlightable>::highlight(
                            &mut secondary_field_0,
                            HighlightColor::Cyan,
                            &mut parser.highlights(),
                        );
                        exit
                    } {
                        ParseExit::Complete => {}
                        ParseExit::Cut => {
                            *output = Some(Self {
                                keyword: primary_field,
                                name: secondary_field_0,
                                value: secondary_field_1,
                                semi: secondary_field_2,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                    }
                    match {
                        let exit = <Option<
                            Set,
                        > as Parse>::parse(parser, &mut secondary_field_1);
                        exit
                    } {
                        ParseExit::Complete => {}
                        ParseExit::Cut => {
                            *output = Some(Self {
                                keyword: primary_field,
                                name: secondary_field_0,
                                value: secondary_field_1,
                                semi: secondary_field_2,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                    }
                    match {
                        let exit = <Try<
                            SemiPunct,
                        > as Parse>::parse(parser, &mut secondary_field_2);
                        exit
                    } {
                        ParseExit::Complete => {}
                        ParseExit::Cut => {
                            *output = Some(Self {
                                keyword: primary_field,
                                name: secondary_field_0,
                                value: secondary_field_1,
                                semi: secondary_field_2,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                    }
                    *output = Some(Self {
                        keyword: primary_field,
                        name: secondary_field_0,
                        value: secondary_field_1,
                        semi: secondary_field_2,
                    });
                    ParseExit::Complete
                }
            }
        }
        fn detect(parser: &impl Tokenizer) -> Detection {
            'detect_fields: {
                match <LetKeyword as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                match <Try<Param> as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                match <Option<Set> as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                match <Try<SemiPunct> as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                Detection::NotDetected
            }
        }
    }
    impl ParseDesc for LetStmt {
        fn desc() -> &'static str {
            "a statement"
        }
    }
    #[desc = "a statement"]
    pub struct ExprStmt {
        pub expr: Expr,
        pub set: Option<Set>,
        pub semi: Try<SemiPunct>,
    }
    #[allow(unreachable_code)]
    #[automatically_derived]
    impl derive_more::core::fmt::Debug for ExprStmt {
        #[inline]
        fn fmt(
            &self,
            __derive_more_f: &mut derive_more::core::fmt::Formatter<'_>,
        ) -> derive_more::core::fmt::Result {
            let expr = &self.expr;
            let set = &self.set;
            let semi = &self.semi;
            derive_more::core::fmt::DebugStruct::finish(
                derive_more::core::fmt::DebugStruct::field(
                    derive_more::core::fmt::DebugStruct::field(
                        derive_more::core::fmt::DebugStruct::field(
                            &mut derive_more::core::fmt::Formatter::debug_struct(
                                __derive_more_f,
                                "ExprStmt",
                            ),
                            "expr",
                            &expr,
                        ),
                        "set",
                        &set,
                    ),
                    "semi",
                    &semi,
                ),
            )
        }
    }
    impl OptionParse for ExprStmt {
        fn option_parse(
            parser: &mut impl Tokenizer,
            output: &mut Option<Self>,
        ) -> ParseExit {
            {
                #[allow(unused_labels)]
                'option_parse_fields: {
                    if 'detect_fields: {
                        match <Expr as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        match <Option<Set> as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        match <Try<SemiPunct> as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    } == Detection::NotDetected
                    {
                        break 'option_parse_fields ParseExit::Complete;
                    }
                    let mut primary_field = None;
                    let primary_field_exit = {
                        let exit = <Expr as OptionParse>::option_parse(
                            parser,
                            &mut primary_field,
                        );
                        exit
                    };
                    let primary_field = primary_field.unwrap();
                    let mut secondary_field_0 = <Option<Set> as Parse>::parse_error();
                    let mut secondary_field_1 = <Try<SemiPunct> as Parse>::parse_error();
                    if primary_field_exit == ParseExit::Cut {
                        *output = Some(Self {
                            expr: primary_field,
                            set: secondary_field_0,
                            semi: secondary_field_1,
                        });
                        break 'option_parse_fields ParseExit::Cut;
                    }
                    match {
                        let exit = <Option<
                            Set,
                        > as Parse>::parse(parser, &mut secondary_field_0);
                        exit
                    } {
                        ParseExit::Complete => {}
                        ParseExit::Cut => {
                            *output = Some(Self {
                                expr: primary_field,
                                set: secondary_field_0,
                                semi: secondary_field_1,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                    }
                    match {
                        let exit = <Try<
                            SemiPunct,
                        > as Parse>::parse(parser, &mut secondary_field_1);
                        exit
                    } {
                        ParseExit::Complete => {}
                        ParseExit::Cut => {
                            *output = Some(Self {
                                expr: primary_field,
                                set: secondary_field_0,
                                semi: secondary_field_1,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                    }
                    *output = Some(Self {
                        expr: primary_field,
                        set: secondary_field_0,
                        semi: secondary_field_1,
                    });
                    ParseExit::Complete
                }
            }
        }
        fn detect(parser: &impl Tokenizer) -> Detection {
            'detect_fields: {
                match <Expr as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                match <Option<Set> as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                match <Try<SemiPunct> as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                Detection::NotDetected
            }
        }
    }
    impl ParseDesc for ExprStmt {
        fn desc() -> &'static str {
            "a statement"
        }
    }
    #[desc = "a statement"]
    pub struct ControlStmt<K: OptionParse> {
        pub keyword: K,
        pub value: Try<Expr>,
        pub semi: Try<SemiPunct>,
    }
    #[allow(unreachable_code)]
    #[automatically_derived]
    impl<K: OptionParse> derive_more::core::fmt::Debug for ControlStmt<K>
    where
        K: derive_more::core::fmt::Debug,
    {
        #[inline]
        fn fmt(
            &self,
            __derive_more_f: &mut derive_more::core::fmt::Formatter<'_>,
        ) -> derive_more::core::fmt::Result {
            let keyword = &self.keyword;
            let value = &self.value;
            let semi = &self.semi;
            derive_more::core::fmt::DebugStruct::finish(
                derive_more::core::fmt::DebugStruct::field(
                    derive_more::core::fmt::DebugStruct::field(
                        derive_more::core::fmt::DebugStruct::field(
                            &mut derive_more::core::fmt::Formatter::debug_struct(
                                __derive_more_f,
                                "ControlStmt",
                            ),
                            "keyword",
                            &keyword,
                        ),
                        "value",
                        &value,
                    ),
                    "semi",
                    &semi,
                ),
            )
        }
    }
    impl<K: OptionParse> OptionParse for ControlStmt<K> {
        fn option_parse(
            parser: &mut impl Tokenizer,
            output: &mut Option<Self>,
        ) -> ParseExit {
            {
                #[allow(unused_labels)]
                'option_parse_fields: {
                    if 'detect_fields: {
                        match <K as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        match <Try<Expr> as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        match <Try<SemiPunct> as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    } == Detection::NotDetected
                    {
                        break 'option_parse_fields ParseExit::Complete;
                    }
                    let mut primary_field = None;
                    let primary_field_exit = {
                        let exit = <K as OptionParse>::option_parse(
                            parser,
                            &mut primary_field,
                        );
                        exit
                    };
                    let primary_field = primary_field.unwrap();
                    let mut secondary_field_0 = <Try<Expr> as Parse>::parse_error();
                    let mut secondary_field_1 = <Try<SemiPunct> as Parse>::parse_error();
                    if primary_field_exit == ParseExit::Cut {
                        *output = Some(Self {
                            keyword: primary_field,
                            value: secondary_field_0,
                            semi: secondary_field_1,
                        });
                        break 'option_parse_fields ParseExit::Cut;
                    }
                    match {
                        let exit = <Try<
                            Expr,
                        > as Parse>::parse(parser, &mut secondary_field_0);
                        exit
                    } {
                        ParseExit::Complete => {}
                        ParseExit::Cut => {
                            *output = Some(Self {
                                keyword: primary_field,
                                value: secondary_field_0,
                                semi: secondary_field_1,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                    }
                    match {
                        let exit = <Try<
                            SemiPunct,
                        > as Parse>::parse(parser, &mut secondary_field_1);
                        exit
                    } {
                        ParseExit::Complete => {}
                        ParseExit::Cut => {
                            *output = Some(Self {
                                keyword: primary_field,
                                value: secondary_field_0,
                                semi: secondary_field_1,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                    }
                    *output = Some(Self {
                        keyword: primary_field,
                        value: secondary_field_0,
                        semi: secondary_field_1,
                    });
                    ParseExit::Complete
                }
            }
        }
        fn detect(parser: &impl Tokenizer) -> Detection {
            'detect_fields: {
                match <K as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                match <Try<Expr> as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                match <Try<SemiPunct> as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                Detection::NotDetected
            }
        }
    }
    impl<K: OptionParse> ParseDesc for ControlStmt<K> {
        fn desc() -> &'static str {
            "a statement"
        }
    }
}
mod contract {
    use super::*;
    pub struct Contract {
        #[parse_as(Repeated<_>)]
        pub segments: Vec<ContractSegment>,
    }
    #[automatically_derived]
    impl ::core::fmt::Debug for Contract {
        #[inline]
        fn fmt(&self, f: &mut ::core::fmt::Formatter) -> ::core::fmt::Result {
            ::core::fmt::Formatter::debug_struct_field1_finish(
                f,
                "Contract",
                "segments",
                &&self.segments,
            )
        }
    }
    impl OptionParse for Contract {
        fn option_parse(
            parser: &mut impl Tokenizer,
            output: &mut Option<Self>,
        ) -> ParseExit {
            {
                #[allow(unused_labels)]
                'option_parse_fields: {
                    if 'detect_fields: {
                        match <Repeated<_> as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    } == Detection::NotDetected
                    {
                        break 'option_parse_fields ParseExit::Complete;
                    }
                    let mut primary_field = None;
                    let primary_field_exit = {
                        let exit = {
                            let mut temp_output = None;
                            let exit = <Repeated<
                                _,
                            > as OptionParse>::option_parse(parser, &mut temp_output);
                            *&mut primary_field = <Repeated<
                                _,
                            > as Into<Vec<ContractSegment>>>::into(temp_output);
                            exit
                        };
                        exit
                    };
                    let primary_field = primary_field.unwrap();
                    if primary_field_exit == ParseExit::Cut {
                        *output = Some(Self { segments: primary_field });
                        break 'option_parse_fields ParseExit::Cut;
                    }
                    *output = Some(Self { segments: primary_field });
                    ParseExit::Complete
                }
            }
        }
        fn detect(parser: &impl Tokenizer) -> Detection {
            'detect_fields: {
                match <Repeated<_> as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                Detection::NotDetected
            }
        }
    }
    impl Parse for Contract {
        fn parse(parser: &mut impl Tokenizer, output: &mut Self) -> ParseExit {
            {
                #[allow(unused_labels)]
                'parse_fields: {
                    let mut field_0 = <Repeated<
                        _,
                    > as Into<
                        Vec<ContractSegment>,
                    >>::into(<Repeated<_> as Parse>::parse_error());
                    match {
                        let exit = {
                            let mut temp_output = <Repeated<_> as Parse>::parse_error();
                            let exit = <Repeated<
                                _,
                            > as Parse>::parse(parser, &mut temp_output);
                            *&mut field_0 = <Repeated<
                                _,
                            > as Into<Vec<ContractSegment>>>::into(temp_output);
                            exit
                        };
                        exit
                    } {
                        ParseExit::Complete => {}
                        ParseExit::Cut => {
                            *output = Self { segments: field_0 };
                            break 'parse_fields ParseExit::Cut;
                        }
                    }
                    *output = Self { segments: field_0 };
                    ParseExit::Complete
                }
            }
        }
        fn parse_error() -> Self {
            Self {
                segments: <Repeated<
                    _,
                > as Into<
                    Vec<ContractSegment>,
                >>::into(<Repeated<_> as Parse>::parse_error()),
            }
        }
    }
    #[desc = "a contract segment"]
    pub enum ContractSegment {
        Require(Require),
        Promise(Promise),
    }
    #[automatically_derived]
    impl ::core::fmt::Debug for ContractSegment {
        #[inline]
        fn fmt(&self, f: &mut ::core::fmt::Formatter) -> ::core::fmt::Result {
            match self {
                ContractSegment::Require(__self_0) => {
                    ::core::fmt::Formatter::debug_tuple_field1_finish(
                        f,
                        "Require",
                        &__self_0,
                    )
                }
                ContractSegment::Promise(__self_0) => {
                    ::core::fmt::Formatter::debug_tuple_field1_finish(
                        f,
                        "Promise",
                        &__self_0,
                    )
                }
            }
        }
    }
    impl OptionParse for ContractSegment {
        fn option_parse(
            parser: &mut impl Tokenizer,
            output: &mut Option<Self>,
        ) -> ParseExit {
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <Require as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <Require as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::Require {
                                0: primary_field,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::Require { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <Promise as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <Promise as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::Promise {
                                0: primary_field,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::Promise { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            ParseExit::Complete
        }
        fn detect(parser: &impl Tokenizer) -> Detection {
            'detect_enum: {
                Detection::NotDetected
                    | 'detect_fields: {
                        match <Require as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
                    | 'detect_fields: {
                        match <Promise as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
            }
        }
    }
    impl ParseDesc for ContractSegment {
        fn desc() -> &'static str {
            "a contract segment"
        }
    }
    #[desc = "`promise`"]
    pub struct Require {
        pub keyword: RequireKeyword,
        pub items: Try<Array>,
    }
    #[automatically_derived]
    impl ::core::fmt::Debug for Require {
        #[inline]
        fn fmt(&self, f: &mut ::core::fmt::Formatter) -> ::core::fmt::Result {
            ::core::fmt::Formatter::debug_struct_field2_finish(
                f,
                "Require",
                "keyword",
                &self.keyword,
                "items",
                &&self.items,
            )
        }
    }
    impl OptionParse for Require {
        fn option_parse(
            parser: &mut impl Tokenizer,
            output: &mut Option<Self>,
        ) -> ParseExit {
            {
                #[allow(unused_labels)]
                'option_parse_fields: {
                    if 'detect_fields: {
                        match <RequireKeyword as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        match <Try<Array> as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    } == Detection::NotDetected
                    {
                        break 'option_parse_fields ParseExit::Complete;
                    }
                    let mut primary_field = None;
                    let primary_field_exit = {
                        let exit = <RequireKeyword as OptionParse>::option_parse(
                            parser,
                            &mut primary_field,
                        );
                        exit
                    };
                    let primary_field = primary_field.unwrap();
                    let mut secondary_field_0 = <Try<Array> as Parse>::parse_error();
                    if primary_field_exit == ParseExit::Cut {
                        *output = Some(Self {
                            keyword: primary_field,
                            items: secondary_field_0,
                        });
                        break 'option_parse_fields ParseExit::Cut;
                    }
                    match {
                        let exit = <Try<
                            Array,
                        > as Parse>::parse(parser, &mut secondary_field_0);
                        exit
                    } {
                        ParseExit::Complete => {}
                        ParseExit::Cut => {
                            *output = Some(Self {
                                keyword: primary_field,
                                items: secondary_field_0,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                    }
                    *output = Some(Self {
                        keyword: primary_field,
                        items: secondary_field_0,
                    });
                    ParseExit::Complete
                }
            }
        }
        fn detect(parser: &impl Tokenizer) -> Detection {
            'detect_fields: {
                match <RequireKeyword as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                match <Try<Array> as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                Detection::NotDetected
            }
        }
    }
    impl ParseDesc for Require {
        fn desc() -> &'static str {
            "`promise`"
        }
    }
    #[desc = "`promise`"]
    pub struct Promise {
        pub keyword: PromiseKeyword,
        pub items: Try<Array>,
    }
    #[automatically_derived]
    impl ::core::fmt::Debug for Promise {
        #[inline]
        fn fmt(&self, f: &mut ::core::fmt::Formatter) -> ::core::fmt::Result {
            ::core::fmt::Formatter::debug_struct_field2_finish(
                f,
                "Promise",
                "keyword",
                &self.keyword,
                "items",
                &&self.items,
            )
        }
    }
    impl OptionParse for Promise {
        fn option_parse(
            parser: &mut impl Tokenizer,
            output: &mut Option<Self>,
        ) -> ParseExit {
            {
                #[allow(unused_labels)]
                'option_parse_fields: {
                    if 'detect_fields: {
                        match <PromiseKeyword as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        match <Try<Array> as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    } == Detection::NotDetected
                    {
                        break 'option_parse_fields ParseExit::Complete;
                    }
                    let mut primary_field = None;
                    let primary_field_exit = {
                        let exit = <PromiseKeyword as OptionParse>::option_parse(
                            parser,
                            &mut primary_field,
                        );
                        exit
                    };
                    let primary_field = primary_field.unwrap();
                    let mut secondary_field_0 = <Try<Array> as Parse>::parse_error();
                    if primary_field_exit == ParseExit::Cut {
                        *output = Some(Self {
                            keyword: primary_field,
                            items: secondary_field_0,
                        });
                        break 'option_parse_fields ParseExit::Cut;
                    }
                    match {
                        let exit = <Try<
                            Array,
                        > as Parse>::parse(parser, &mut secondary_field_0);
                        exit
                    } {
                        ParseExit::Complete => {}
                        ParseExit::Cut => {
                            *output = Some(Self {
                                keyword: primary_field,
                                items: secondary_field_0,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                    }
                    *output = Some(Self {
                        keyword: primary_field,
                        items: secondary_field_0,
                    });
                    ParseExit::Complete
                }
            }
        }
        fn detect(parser: &impl Tokenizer) -> Detection {
            'detect_fields: {
                match <PromiseKeyword as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                match <Try<Array> as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                Detection::NotDetected
            }
        }
    }
    impl ParseDesc for Promise {
        fn desc() -> &'static str {
            "`promise`"
        }
    }
}
mod expr {
    use super::*;
    #[desc = "an expression"]
    pub enum ExprCore {
        Ident(Ident),
        Keyword(ExprKeyword),
        Literal(Literal),
        Block(Block),
        Tuple(Tuple),
        Array(Array),
        If(If),
        Loop(Loop),
        While(While),
        Until(Until),
        For(For),
    }
    #[automatically_derived]
    impl ::core::fmt::Debug for ExprCore {
        #[inline]
        fn fmt(&self, f: &mut ::core::fmt::Formatter) -> ::core::fmt::Result {
            match self {
                ExprCore::Ident(__self_0) => {
                    ::core::fmt::Formatter::debug_tuple_field1_finish(
                        f,
                        "Ident",
                        &__self_0,
                    )
                }
                ExprCore::Keyword(__self_0) => {
                    ::core::fmt::Formatter::debug_tuple_field1_finish(
                        f,
                        "Keyword",
                        &__self_0,
                    )
                }
                ExprCore::Literal(__self_0) => {
                    ::core::fmt::Formatter::debug_tuple_field1_finish(
                        f,
                        "Literal",
                        &__self_0,
                    )
                }
                ExprCore::Block(__self_0) => {
                    ::core::fmt::Formatter::debug_tuple_field1_finish(
                        f,
                        "Block",
                        &__self_0,
                    )
                }
                ExprCore::Tuple(__self_0) => {
                    ::core::fmt::Formatter::debug_tuple_field1_finish(
                        f,
                        "Tuple",
                        &__self_0,
                    )
                }
                ExprCore::Array(__self_0) => {
                    ::core::fmt::Formatter::debug_tuple_field1_finish(
                        f,
                        "Array",
                        &__self_0,
                    )
                }
                ExprCore::If(__self_0) => {
                    ::core::fmt::Formatter::debug_tuple_field1_finish(f, "If", &__self_0)
                }
                ExprCore::Loop(__self_0) => {
                    ::core::fmt::Formatter::debug_tuple_field1_finish(
                        f,
                        "Loop",
                        &__self_0,
                    )
                }
                ExprCore::While(__self_0) => {
                    ::core::fmt::Formatter::debug_tuple_field1_finish(
                        f,
                        "While",
                        &__self_0,
                    )
                }
                ExprCore::Until(__self_0) => {
                    ::core::fmt::Formatter::debug_tuple_field1_finish(
                        f,
                        "Until",
                        &__self_0,
                    )
                }
                ExprCore::For(__self_0) => {
                    ::core::fmt::Formatter::debug_tuple_field1_finish(
                        f,
                        "For",
                        &__self_0,
                    )
                }
            }
        }
    }
    impl OptionParse for ExprCore {
        fn option_parse(
            parser: &mut impl Tokenizer,
            output: &mut Option<Self>,
        ) -> ParseExit {
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <Ident as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <Ident as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::Ident {
                                0: primary_field,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::Ident { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <ExprKeyword as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <ExprKeyword as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::Keyword {
                                0: primary_field,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::Keyword { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <Literal as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <Literal as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::Literal {
                                0: primary_field,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::Literal { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <Block as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <Block as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::Block {
                                0: primary_field,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::Block { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <Tuple as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <Tuple as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::Tuple {
                                0: primary_field,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::Tuple { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <Array as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <Array as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::Array {
                                0: primary_field,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::Array { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <If as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <If as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::If { 0: primary_field });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::If { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <Loop as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <Loop as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::Loop { 0: primary_field });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::Loop { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <While as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <While as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::While {
                                0: primary_field,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::While { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <Until as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <Until as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::Until {
                                0: primary_field,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::Until { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <For as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <For as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::For { 0: primary_field });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::For { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            ParseExit::Complete
        }
        fn detect(parser: &impl Tokenizer) -> Detection {
            'detect_enum: {
                Detection::NotDetected
                    | 'detect_fields: {
                        match <Ident as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
                    | 'detect_fields: {
                        match <ExprKeyword as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
                    | 'detect_fields: {
                        match <Literal as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
                    | 'detect_fields: {
                        match <Block as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
                    | 'detect_fields: {
                        match <Tuple as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
                    | 'detect_fields: {
                        match <Array as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
                    | 'detect_fields: {
                        match <If as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
                    | 'detect_fields: {
                        match <Loop as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
                    | 'detect_fields: {
                        match <While as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
                    | 'detect_fields: {
                        match <Until as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
                    | 'detect_fields: {
                        match <For as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
            }
        }
    }
    impl ParseDesc for ExprCore {
        fn desc() -> &'static str {
            "an expression"
        }
    }
    #[desc = "an expression"]
    pub enum ExprKeyword {
        Fn(FnKeyword),
        Out(OutKeyword),
        Type(TypeKeyword),
    }
    #[automatically_derived]
    impl ::core::fmt::Debug for ExprKeyword {
        #[inline]
        fn fmt(&self, f: &mut ::core::fmt::Formatter) -> ::core::fmt::Result {
            match self {
                ExprKeyword::Fn(__self_0) => {
                    ::core::fmt::Formatter::debug_tuple_field1_finish(f, "Fn", &__self_0)
                }
                ExprKeyword::Out(__self_0) => {
                    ::core::fmt::Formatter::debug_tuple_field1_finish(
                        f,
                        "Out",
                        &__self_0,
                    )
                }
                ExprKeyword::Type(__self_0) => {
                    ::core::fmt::Formatter::debug_tuple_field1_finish(
                        f,
                        "Type",
                        &__self_0,
                    )
                }
            }
        }
    }
    #[automatically_derived]
    impl ::core::clone::Clone for ExprKeyword {
        #[inline]
        fn clone(&self) -> ExprKeyword {
            match self {
                ExprKeyword::Fn(__self_0) => {
                    ExprKeyword::Fn(::core::clone::Clone::clone(__self_0))
                }
                ExprKeyword::Out(__self_0) => {
                    ExprKeyword::Out(::core::clone::Clone::clone(__self_0))
                }
                ExprKeyword::Type(__self_0) => {
                    ExprKeyword::Type(::core::clone::Clone::clone(__self_0))
                }
            }
        }
    }
    impl OptionParse for ExprKeyword {
        fn option_parse(
            parser: &mut impl Tokenizer,
            output: &mut Option<Self>,
        ) -> ParseExit {
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <FnKeyword as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <FnKeyword as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::Fn { 0: primary_field });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::Fn { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <OutKeyword as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <OutKeyword as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::Out { 0: primary_field });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::Out { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <TypeKeyword as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <TypeKeyword as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::Type { 0: primary_field });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::Type { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            ParseExit::Complete
        }
        fn detect(parser: &impl Tokenizer) -> Detection {
            'detect_enum: {
                Detection::NotDetected
                    | 'detect_fields: {
                        match <FnKeyword as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
                    | 'detect_fields: {
                        match <OutKeyword as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
                    | 'detect_fields: {
                        match <TypeKeyword as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
            }
        }
    }
    impl ParseDesc for ExprKeyword {
        fn desc() -> &'static str {
            "an expression"
        }
    }
    #[desc = "an expression prefix"]
    pub enum ExprPrefix {
        Neg(MinusPunct),
        Not(ExclamationPunct),
        Deref(StarPunct),
        Ref(AndPunct, ReferenceBounds),
        Eq(EqEqPunct),
        NotEq(NotEqPunct),
        More(MorePunct),
        Less(LessPunct),
        MoreEq(MoreEqPunct),
        LessEq(LessEqPunct),
        Question(QuestionPunct),
        Lifetime(Lifetime),
    }
    #[automatically_derived]
    impl ::core::fmt::Debug for ExprPrefix {
        #[inline]
        fn fmt(&self, f: &mut ::core::fmt::Formatter) -> ::core::fmt::Result {
            match self {
                ExprPrefix::Neg(__self_0) => {
                    ::core::fmt::Formatter::debug_tuple_field1_finish(
                        f,
                        "Neg",
                        &__self_0,
                    )
                }
                ExprPrefix::Not(__self_0) => {
                    ::core::fmt::Formatter::debug_tuple_field1_finish(
                        f,
                        "Not",
                        &__self_0,
                    )
                }
                ExprPrefix::Deref(__self_0) => {
                    ::core::fmt::Formatter::debug_tuple_field1_finish(
                        f,
                        "Deref",
                        &__self_0,
                    )
                }
                ExprPrefix::Ref(__self_0, __self_1) => {
                    ::core::fmt::Formatter::debug_tuple_field2_finish(
                        f,
                        "Ref",
                        __self_0,
                        &__self_1,
                    )
                }
                ExprPrefix::Eq(__self_0) => {
                    ::core::fmt::Formatter::debug_tuple_field1_finish(f, "Eq", &__self_0)
                }
                ExprPrefix::NotEq(__self_0) => {
                    ::core::fmt::Formatter::debug_tuple_field1_finish(
                        f,
                        "NotEq",
                        &__self_0,
                    )
                }
                ExprPrefix::More(__self_0) => {
                    ::core::fmt::Formatter::debug_tuple_field1_finish(
                        f,
                        "More",
                        &__self_0,
                    )
                }
                ExprPrefix::Less(__self_0) => {
                    ::core::fmt::Formatter::debug_tuple_field1_finish(
                        f,
                        "Less",
                        &__self_0,
                    )
                }
                ExprPrefix::MoreEq(__self_0) => {
                    ::core::fmt::Formatter::debug_tuple_field1_finish(
                        f,
                        "MoreEq",
                        &__self_0,
                    )
                }
                ExprPrefix::LessEq(__self_0) => {
                    ::core::fmt::Formatter::debug_tuple_field1_finish(
                        f,
                        "LessEq",
                        &__self_0,
                    )
                }
                ExprPrefix::Question(__self_0) => {
                    ::core::fmt::Formatter::debug_tuple_field1_finish(
                        f,
                        "Question",
                        &__self_0,
                    )
                }
                ExprPrefix::Lifetime(__self_0) => {
                    ::core::fmt::Formatter::debug_tuple_field1_finish(
                        f,
                        "Lifetime",
                        &__self_0,
                    )
                }
            }
        }
    }
    impl OptionParse for ExprPrefix {
        fn option_parse(
            parser: &mut impl Tokenizer,
            output: &mut Option<Self>,
        ) -> ParseExit {
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <MinusPunct as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <MinusPunct as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::Neg { 0: primary_field });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::Neg { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <ExclamationPunct as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <ExclamationPunct as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::Not { 0: primary_field });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::Not { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <StarPunct as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <StarPunct as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::Deref {
                                0: primary_field,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::Deref { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <AndPunct as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            match <ReferenceBounds as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <AndPunct as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        let mut secondary_field_0 = <ReferenceBounds as Parse>::parse_error();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::Ref {
                                0: primary_field,
                                1: secondary_field_0,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        match {
                            let exit = <ReferenceBounds as Parse>::parse(
                                parser,
                                &mut secondary_field_0,
                            );
                            exit
                        } {
                            ParseExit::Complete => {}
                            ParseExit::Cut => {
                                *&mut variant_output = Some(Self::Ref {
                                    0: primary_field,
                                    1: secondary_field_0,
                                });
                                break 'option_parse_fields ParseExit::Cut;
                            }
                        }
                        *&mut variant_output = Some(Self::Ref {
                            0: primary_field,
                            1: secondary_field_0,
                        });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <EqEqPunct as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <EqEqPunct as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::Eq { 0: primary_field });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::Eq { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <NotEqPunct as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <NotEqPunct as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::NotEq {
                                0: primary_field,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::NotEq { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <MorePunct as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <MorePunct as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::More { 0: primary_field });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::More { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <LessPunct as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <LessPunct as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::Less { 0: primary_field });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::Less { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <MoreEqPunct as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <MoreEqPunct as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::MoreEq {
                                0: primary_field,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::MoreEq { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <LessEqPunct as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <LessEqPunct as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::LessEq {
                                0: primary_field,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::LessEq { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <QuestionPunct as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <QuestionPunct as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::Question {
                                0: primary_field,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::Question { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <Lifetime as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <Lifetime as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::Lifetime {
                                0: primary_field,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::Lifetime { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            ParseExit::Complete
        }
        fn detect(parser: &impl Tokenizer) -> Detection {
            'detect_enum: {
                Detection::NotDetected
                    | 'detect_fields: {
                        match <MinusPunct as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
                    | 'detect_fields: {
                        match <ExclamationPunct as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
                    | 'detect_fields: {
                        match <StarPunct as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
                    | 'detect_fields: {
                        match <AndPunct as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        match <ReferenceBounds as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
                    | 'detect_fields: {
                        match <EqEqPunct as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
                    | 'detect_fields: {
                        match <NotEqPunct as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
                    | 'detect_fields: {
                        match <MorePunct as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
                    | 'detect_fields: {
                        match <LessPunct as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
                    | 'detect_fields: {
                        match <MoreEqPunct as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
                    | 'detect_fields: {
                        match <LessEqPunct as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
                    | 'detect_fields: {
                        match <QuestionPunct as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
                    | 'detect_fields: {
                        match <Lifetime as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
            }
        }
    }
    impl ParseDesc for ExprPrefix {
        fn desc() -> &'static str {
            "an expression prefix"
        }
    }
    pub enum ReferenceBounds {
        #[fallback]
        Default,
        Mut(MutKeyword),
        Sole(SoleKeyword),
        SoleMut(SmutKeyword),
    }
    #[automatically_derived]
    impl ::core::fmt::Debug for ReferenceBounds {
        #[inline]
        fn fmt(&self, f: &mut ::core::fmt::Formatter) -> ::core::fmt::Result {
            match self {
                ReferenceBounds::Default => {
                    ::core::fmt::Formatter::write_str(f, "Default")
                }
                ReferenceBounds::Mut(__self_0) => {
                    ::core::fmt::Formatter::debug_tuple_field1_finish(
                        f,
                        "Mut",
                        &__self_0,
                    )
                }
                ReferenceBounds::Sole(__self_0) => {
                    ::core::fmt::Formatter::debug_tuple_field1_finish(
                        f,
                        "Sole",
                        &__self_0,
                    )
                }
                ReferenceBounds::SoleMut(__self_0) => {
                    ::core::fmt::Formatter::debug_tuple_field1_finish(
                        f,
                        "SoleMut",
                        &__self_0,
                    )
                }
            }
        }
    }
    #[automatically_derived]
    impl ::core::clone::Clone for ReferenceBounds {
        #[inline]
        fn clone(&self) -> ReferenceBounds {
            let _: ::core::clone::AssertParamIsClone<MutKeyword>;
            let _: ::core::clone::AssertParamIsClone<SoleKeyword>;
            let _: ::core::clone::AssertParamIsClone<SmutKeyword>;
            *self
        }
    }
    #[automatically_derived]
    impl ::core::marker::Copy for ReferenceBounds {}
    #[automatically_derived]
    impl ::core::marker::StructuralPartialEq for ReferenceBounds {}
    #[automatically_derived]
    impl ::core::cmp::PartialEq for ReferenceBounds {
        #[inline]
        fn eq(&self, other: &ReferenceBounds) -> bool {
            let __self_discr = ::core::intrinsics::discriminant_value(self);
            let __arg1_discr = ::core::intrinsics::discriminant_value(other);
            __self_discr == __arg1_discr
                && match (self, other) {
                    (ReferenceBounds::Mut(__self_0), ReferenceBounds::Mut(__arg1_0)) => {
                        __self_0 == __arg1_0
                    }
                    (
                        ReferenceBounds::Sole(__self_0),
                        ReferenceBounds::Sole(__arg1_0),
                    ) => __self_0 == __arg1_0,
                    (
                        ReferenceBounds::SoleMut(__self_0),
                        ReferenceBounds::SoleMut(__arg1_0),
                    ) => __self_0 == __arg1_0,
                    _ => true,
                }
        }
    }
    #[automatically_derived]
    impl ::core::cmp::Eq for ReferenceBounds {
        #[inline]
        #[doc(hidden)]
        #[coverage(off)]
        fn assert_receiver_is_total_eq(&self) -> () {
            let _: ::core::cmp::AssertParamIsEq<MutKeyword>;
            let _: ::core::cmp::AssertParamIsEq<SoleKeyword>;
            let _: ::core::cmp::AssertParamIsEq<SmutKeyword>;
        }
    }
    impl OptionSpanned for ReferenceBounds {
        fn option_span(&self) -> Option<Span> {
            Option::<
                Span,
            >::from({
                match self {
                    Self::Default => {
                        Option::<
                            Span,
                        >::from({
                            {
                                let span = None::<Span>;
                                span
                            }
                        })
                    }
                    Self::Mut(field_0) => {
                        Option::<
                            Span,
                        >::from({
                            {
                                let span = None::<Span>;
                                let span = span
                                    .connect(<MutKeyword as Spanned>::span(&field_0));
                                span
                            }
                        })
                    }
                    Self::Sole(field_0) => {
                        Option::<
                            Span,
                        >::from({
                            {
                                let span = None::<Span>;
                                let span = span
                                    .connect(<SoleKeyword as Spanned>::span(&field_0));
                                span
                            }
                        })
                    }
                    Self::SoleMut(field_0) => {
                        Option::<
                            Span,
                        >::from({
                            {
                                let span = None::<Span>;
                                let span = span
                                    .connect(<SmutKeyword as Spanned>::span(&field_0));
                                span
                            }
                        })
                    }
                }
            })
        }
    }
    impl OptionParse for ReferenceBounds {
        fn option_parse(
            parser: &mut impl Tokenizer,
            output: &mut Option<Self>,
        ) -> ParseExit {
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <MutKeyword as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <MutKeyword as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::Mut { 0: primary_field });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::Mut { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <SoleKeyword as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <SoleKeyword as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::Sole { 0: primary_field });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::Sole { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <SmutKeyword as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <SmutKeyword as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::SoleMut {
                                0: primary_field,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::SoleMut { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            {
                *output = Some(Self::Default {});
                ParseExit::Complete
            }
        }
        fn detect(parser: &impl Tokenizer) -> Detection {
            'detect_enum: {
                Detection::EmptyDetected
                    | 'detect_fields: {
                        match <MutKeyword as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
                    | 'detect_fields: {
                        match <SoleKeyword as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
                    | 'detect_fields: {
                        match <SmutKeyword as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
            }
        }
    }
    impl Parse for ReferenceBounds {
        fn parse(parser: &mut impl Tokenizer, output: &mut Self) -> ParseExit {
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <MutKeyword as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <MutKeyword as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::Mut { 0: primary_field });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::Mut { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = variant_output;
                    return variant_option_parse_exit;
                }
            }
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <SoleKeyword as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <SoleKeyword as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::Sole { 0: primary_field });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::Sole { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = variant_output;
                    return variant_option_parse_exit;
                }
            }
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <SmutKeyword as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <SmutKeyword as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::SoleMut {
                                0: primary_field,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::SoleMut { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = variant_output;
                    return variant_option_parse_exit;
                }
            }
            {
                #[allow(unused_labels)]
                'parse_fields: {
                    *output = Self::Default {};
                    ParseExit::Complete
                }
            }
        }
        fn parse_error() -> Self {
            Self::Default {}
        }
    }
    #[desc = "an expression postfix"]
    pub enum ExprPostfix {
        Member(DotPunct, Try<Member>),
        Call(Tuple),
        Index(Array),
        Generics(GenericArgs),
        Construct(Construct),
    }
    #[automatically_derived]
    impl ::core::fmt::Debug for ExprPostfix {
        #[inline]
        fn fmt(&self, f: &mut ::core::fmt::Formatter) -> ::core::fmt::Result {
            match self {
                ExprPostfix::Member(__self_0, __self_1) => {
                    ::core::fmt::Formatter::debug_tuple_field2_finish(
                        f,
                        "Member",
                        __self_0,
                        &__self_1,
                    )
                }
                ExprPostfix::Call(__self_0) => {
                    ::core::fmt::Formatter::debug_tuple_field1_finish(
                        f,
                        "Call",
                        &__self_0,
                    )
                }
                ExprPostfix::Index(__self_0) => {
                    ::core::fmt::Formatter::debug_tuple_field1_finish(
                        f,
                        "Index",
                        &__self_0,
                    )
                }
                ExprPostfix::Generics(__self_0) => {
                    ::core::fmt::Formatter::debug_tuple_field1_finish(
                        f,
                        "Generics",
                        &__self_0,
                    )
                }
                ExprPostfix::Construct(__self_0) => {
                    ::core::fmt::Formatter::debug_tuple_field1_finish(
                        f,
                        "Construct",
                        &__self_0,
                    )
                }
            }
        }
    }
    impl OptionParse for ExprPostfix {
        fn option_parse(
            parser: &mut impl Tokenizer,
            output: &mut Option<Self>,
        ) -> ParseExit {
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <DotPunct as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            match <Try<Member> as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <DotPunct as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        let mut secondary_field_0 = <Try<
                            Member,
                        > as Parse>::parse_error();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::Member {
                                0: primary_field,
                                1: secondary_field_0,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        match {
                            let exit = <Try<
                                Member,
                            > as Parse>::parse(parser, &mut secondary_field_0);
                            exit
                        } {
                            ParseExit::Complete => {}
                            ParseExit::Cut => {
                                *&mut variant_output = Some(Self::Member {
                                    0: primary_field,
                                    1: secondary_field_0,
                                });
                                break 'option_parse_fields ParseExit::Cut;
                            }
                        }
                        *&mut variant_output = Some(Self::Member {
                            0: primary_field,
                            1: secondary_field_0,
                        });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <Tuple as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <Tuple as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::Call { 0: primary_field });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::Call { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <Array as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <Array as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::Index {
                                0: primary_field,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::Index { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <GenericArgs as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <GenericArgs as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::Generics {
                                0: primary_field,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::Generics { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <Construct as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <Construct as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::Construct {
                                0: primary_field,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::Construct {
                            0: primary_field,
                        });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            ParseExit::Complete
        }
        fn detect(parser: &impl Tokenizer) -> Detection {
            'detect_enum: {
                Detection::NotDetected
                    | 'detect_fields: {
                        match <DotPunct as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        match <Try<Member> as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
                    | 'detect_fields: {
                        match <Tuple as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
                    | 'detect_fields: {
                        match <Array as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
                    | 'detect_fields: {
                        match <GenericArgs as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
                    | 'detect_fields: {
                        match <Construct as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
            }
        }
    }
    impl ParseDesc for ExprPostfix {
        fn desc() -> &'static str {
            "an expression postfix"
        }
    }
    #[desc = "a `.` expression"]
    pub enum Member {
        Unnamed(#[highlight(HighlightColor::Cyan)] IntLiteral),
        Named(Ident),
    }
    #[automatically_derived]
    impl ::core::fmt::Debug for Member {
        #[inline]
        fn fmt(&self, f: &mut ::core::fmt::Formatter) -> ::core::fmt::Result {
            match self {
                Member::Unnamed(__self_0) => {
                    ::core::fmt::Formatter::debug_tuple_field1_finish(
                        f,
                        "Unnamed",
                        &__self_0,
                    )
                }
                Member::Named(__self_0) => {
                    ::core::fmt::Formatter::debug_tuple_field1_finish(
                        f,
                        "Named",
                        &__self_0,
                    )
                }
            }
        }
    }
    impl Spanned for Member {
        fn span(&self) -> Span {
            match self {
                Self::Unnamed(field_0) => {
                    let span = None::<Span>;
                    let span = span.connect(<IntLiteral as Spanned>::span(&field_0));
                    span
                }
                Self::Named(field_0) => {
                    let span = None::<Span>;
                    let span = span.connect(<Ident as Spanned>::span(&field_0));
                    span
                }
            }
        }
    }
    impl OptionSpanned for Member {
        fn option_span(&self) -> Option<Span> {
            Some(<Self as Spanned>::span(self))
        }
    }
    impl OptionParse for Member {
        fn option_parse(
            parser: &mut impl Tokenizer,
            output: &mut Option<Self>,
        ) -> ParseExit {
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <IntLiteral as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <IntLiteral as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            <Option<
                                IntLiteral,
                            > as Highlightable>::highlight(
                                &mut primary_field,
                                HighlightColor::Cyan,
                                &mut parser.highlights(),
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::Unnamed {
                                0: primary_field,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::Unnamed { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <Ident as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <Ident as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::Named {
                                0: primary_field,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::Named { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            ParseExit::Complete
        }
        fn detect(parser: &impl Tokenizer) -> Detection {
            'detect_enum: {
                Detection::NotDetected
                    | 'detect_fields: {
                        match <IntLiteral as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
                    | 'detect_fields: {
                        match <Ident as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
            }
        }
    }
    impl ParseDesc for Member {
        fn desc() -> &'static str {
            "a `.` expression"
        }
    }
    #[desc = "an expression"]
    pub struct UnaryExpr {
        pub attrs: Repeated<Attr>,
        pub prefix: Repeated<ExprPrefix>,
        pub core: Try<ExprCore>,
        pub postfix: Repeated<ExprPostfix>,
    }
    #[automatically_derived]
    impl ::core::fmt::Debug for UnaryExpr {
        #[inline]
        fn fmt(&self, f: &mut ::core::fmt::Formatter) -> ::core::fmt::Result {
            ::core::fmt::Formatter::debug_struct_field4_finish(
                f,
                "UnaryExpr",
                "attrs",
                &self.attrs,
                "prefix",
                &self.prefix,
                "core",
                &self.core,
                "postfix",
                &&self.postfix,
            )
        }
    }
    impl OptionParse for UnaryExpr {
        fn option_parse(
            parser: &mut impl Tokenizer,
            output: &mut Option<Self>,
        ) -> ParseExit {
            {
                #[allow(unused_labels)]
                'option_parse_fields: {
                    if 'detect_fields: {
                        match <Repeated<Attr> as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        match <Repeated<ExprPrefix> as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        match <Try<ExprCore> as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        match <Repeated<ExprPostfix> as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    } == Detection::NotDetected
                    {
                        break 'option_parse_fields ParseExit::Complete;
                    }
                    let mut primary_field = None;
                    let primary_field_exit = {
                        let exit = <Repeated<
                            Attr,
                        > as OptionParse>::option_parse(parser, &mut primary_field);
                        exit
                    };
                    let primary_field = primary_field.unwrap();
                    let mut secondary_field_0 = <Repeated<
                        ExprPrefix,
                    > as Parse>::parse_error();
                    let mut secondary_field_1 = <Try<ExprCore> as Parse>::parse_error();
                    let mut secondary_field_2 = <Repeated<
                        ExprPostfix,
                    > as Parse>::parse_error();
                    if primary_field_exit == ParseExit::Cut {
                        *output = Some(Self {
                            attrs: primary_field,
                            prefix: secondary_field_0,
                            core: secondary_field_1,
                            postfix: secondary_field_2,
                        });
                        break 'option_parse_fields ParseExit::Cut;
                    }
                    match {
                        let exit = <Repeated<
                            ExprPrefix,
                        > as Parse>::parse(parser, &mut secondary_field_0);
                        exit
                    } {
                        ParseExit::Complete => {}
                        ParseExit::Cut => {
                            *output = Some(Self {
                                attrs: primary_field,
                                prefix: secondary_field_0,
                                core: secondary_field_1,
                                postfix: secondary_field_2,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                    }
                    match {
                        let exit = <Try<
                            ExprCore,
                        > as Parse>::parse(parser, &mut secondary_field_1);
                        exit
                    } {
                        ParseExit::Complete => {}
                        ParseExit::Cut => {
                            *output = Some(Self {
                                attrs: primary_field,
                                prefix: secondary_field_0,
                                core: secondary_field_1,
                                postfix: secondary_field_2,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                    }
                    match {
                        let exit = <Repeated<
                            ExprPostfix,
                        > as Parse>::parse(parser, &mut secondary_field_2);
                        exit
                    } {
                        ParseExit::Complete => {}
                        ParseExit::Cut => {
                            *output = Some(Self {
                                attrs: primary_field,
                                prefix: secondary_field_0,
                                core: secondary_field_1,
                                postfix: secondary_field_2,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                    }
                    *output = Some(Self {
                        attrs: primary_field,
                        prefix: secondary_field_0,
                        core: secondary_field_1,
                        postfix: secondary_field_2,
                    });
                    ParseExit::Complete
                }
            }
        }
        fn detect(parser: &impl Tokenizer) -> Detection {
            'detect_fields: {
                match <Repeated<Attr> as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                match <Repeated<ExprPrefix> as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                match <Try<ExprCore> as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                match <Repeated<ExprPostfix> as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                Detection::NotDetected
            }
        }
    }
    impl ParseDesc for UnaryExpr {
        fn desc() -> &'static str {
            "an expression"
        }
    }
    #[desc = "a binary expr extension"]
    pub struct ExprBinaryPostfix {
        pub op: BinaryOperator,
        pub rhs: Try<UnaryExpr>,
    }
    #[automatically_derived]
    impl ::core::fmt::Debug for ExprBinaryPostfix {
        #[inline]
        fn fmt(&self, f: &mut ::core::fmt::Formatter) -> ::core::fmt::Result {
            ::core::fmt::Formatter::debug_struct_field2_finish(
                f,
                "ExprBinaryPostfix",
                "op",
                &self.op,
                "rhs",
                &&self.rhs,
            )
        }
    }
    impl OptionParse for ExprBinaryPostfix {
        fn option_parse(
            parser: &mut impl Tokenizer,
            output: &mut Option<Self>,
        ) -> ParseExit {
            {
                #[allow(unused_labels)]
                'option_parse_fields: {
                    if 'detect_fields: {
                        match <BinaryOperator as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        match <Try<UnaryExpr> as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    } == Detection::NotDetected
                    {
                        break 'option_parse_fields ParseExit::Complete;
                    }
                    let mut primary_field = None;
                    let primary_field_exit = {
                        let exit = <BinaryOperator as OptionParse>::option_parse(
                            parser,
                            &mut primary_field,
                        );
                        exit
                    };
                    let primary_field = primary_field.unwrap();
                    let mut secondary_field_0 = <Try<UnaryExpr> as Parse>::parse_error();
                    if primary_field_exit == ParseExit::Cut {
                        *output = Some(Self {
                            op: primary_field,
                            rhs: secondary_field_0,
                        });
                        break 'option_parse_fields ParseExit::Cut;
                    }
                    match {
                        let exit = <Try<
                            UnaryExpr,
                        > as Parse>::parse(parser, &mut secondary_field_0);
                        exit
                    } {
                        ParseExit::Complete => {}
                        ParseExit::Cut => {
                            *output = Some(Self {
                                op: primary_field,
                                rhs: secondary_field_0,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                    }
                    *output = Some(Self {
                        op: primary_field,
                        rhs: secondary_field_0,
                    });
                    ParseExit::Complete
                }
            }
        }
        fn detect(parser: &impl Tokenizer) -> Detection {
            'detect_fields: {
                match <BinaryOperator as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                match <Try<UnaryExpr> as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                Detection::NotDetected
            }
        }
    }
    impl ParseDesc for ExprBinaryPostfix {
        fn desc() -> &'static str {
            "a binary expr extension"
        }
    }
    #[desc = "a binary operator"]
    pub enum BinaryOperator {
        Add(PlusPunct),
        Sub(MinusPunct),
        Mul(StarPunct),
        Div(SlashPunct),
        Rem(PercentPunct),
        And(AndPunct),
        Or(OrPunct),
        Xor(CaretPunct),
        Bound(ColonPunct),
    }
    #[automatically_derived]
    impl ::core::fmt::Debug for BinaryOperator {
        #[inline]
        fn fmt(&self, f: &mut ::core::fmt::Formatter) -> ::core::fmt::Result {
            match self {
                BinaryOperator::Add(__self_0) => {
                    ::core::fmt::Formatter::debug_tuple_field1_finish(
                        f,
                        "Add",
                        &__self_0,
                    )
                }
                BinaryOperator::Sub(__self_0) => {
                    ::core::fmt::Formatter::debug_tuple_field1_finish(
                        f,
                        "Sub",
                        &__self_0,
                    )
                }
                BinaryOperator::Mul(__self_0) => {
                    ::core::fmt::Formatter::debug_tuple_field1_finish(
                        f,
                        "Mul",
                        &__self_0,
                    )
                }
                BinaryOperator::Div(__self_0) => {
                    ::core::fmt::Formatter::debug_tuple_field1_finish(
                        f,
                        "Div",
                        &__self_0,
                    )
                }
                BinaryOperator::Rem(__self_0) => {
                    ::core::fmt::Formatter::debug_tuple_field1_finish(
                        f,
                        "Rem",
                        &__self_0,
                    )
                }
                BinaryOperator::And(__self_0) => {
                    ::core::fmt::Formatter::debug_tuple_field1_finish(
                        f,
                        "And",
                        &__self_0,
                    )
                }
                BinaryOperator::Or(__self_0) => {
                    ::core::fmt::Formatter::debug_tuple_field1_finish(f, "Or", &__self_0)
                }
                BinaryOperator::Xor(__self_0) => {
                    ::core::fmt::Formatter::debug_tuple_field1_finish(
                        f,
                        "Xor",
                        &__self_0,
                    )
                }
                BinaryOperator::Bound(__self_0) => {
                    ::core::fmt::Formatter::debug_tuple_field1_finish(
                        f,
                        "Bound",
                        &__self_0,
                    )
                }
            }
        }
    }
    #[automatically_derived]
    impl ::core::clone::Clone for BinaryOperator {
        #[inline]
        fn clone(&self) -> BinaryOperator {
            let _: ::core::clone::AssertParamIsClone<PlusPunct>;
            let _: ::core::clone::AssertParamIsClone<MinusPunct>;
            let _: ::core::clone::AssertParamIsClone<StarPunct>;
            let _: ::core::clone::AssertParamIsClone<SlashPunct>;
            let _: ::core::clone::AssertParamIsClone<PercentPunct>;
            let _: ::core::clone::AssertParamIsClone<AndPunct>;
            let _: ::core::clone::AssertParamIsClone<OrPunct>;
            let _: ::core::clone::AssertParamIsClone<CaretPunct>;
            let _: ::core::clone::AssertParamIsClone<ColonPunct>;
            *self
        }
    }
    #[automatically_derived]
    impl ::core::marker::Copy for BinaryOperator {}
    #[automatically_derived]
    impl ::core::marker::StructuralPartialEq for BinaryOperator {}
    #[automatically_derived]
    impl ::core::cmp::PartialEq for BinaryOperator {
        #[inline]
        fn eq(&self, other: &BinaryOperator) -> bool {
            let __self_discr = ::core::intrinsics::discriminant_value(self);
            let __arg1_discr = ::core::intrinsics::discriminant_value(other);
            __self_discr == __arg1_discr
                && match (self, other) {
                    (BinaryOperator::Add(__self_0), BinaryOperator::Add(__arg1_0)) => {
                        __self_0 == __arg1_0
                    }
                    (BinaryOperator::Sub(__self_0), BinaryOperator::Sub(__arg1_0)) => {
                        __self_0 == __arg1_0
                    }
                    (BinaryOperator::Mul(__self_0), BinaryOperator::Mul(__arg1_0)) => {
                        __self_0 == __arg1_0
                    }
                    (BinaryOperator::Div(__self_0), BinaryOperator::Div(__arg1_0)) => {
                        __self_0 == __arg1_0
                    }
                    (BinaryOperator::Rem(__self_0), BinaryOperator::Rem(__arg1_0)) => {
                        __self_0 == __arg1_0
                    }
                    (BinaryOperator::And(__self_0), BinaryOperator::And(__arg1_0)) => {
                        __self_0 == __arg1_0
                    }
                    (BinaryOperator::Or(__self_0), BinaryOperator::Or(__arg1_0)) => {
                        __self_0 == __arg1_0
                    }
                    (BinaryOperator::Xor(__self_0), BinaryOperator::Xor(__arg1_0)) => {
                        __self_0 == __arg1_0
                    }
                    (
                        BinaryOperator::Bound(__self_0),
                        BinaryOperator::Bound(__arg1_0),
                    ) => __self_0 == __arg1_0,
                    _ => unsafe { ::core::intrinsics::unreachable() }
                }
        }
    }
    #[automatically_derived]
    impl ::core::cmp::Eq for BinaryOperator {
        #[inline]
        #[doc(hidden)]
        #[coverage(off)]
        fn assert_receiver_is_total_eq(&self) -> () {
            let _: ::core::cmp::AssertParamIsEq<PlusPunct>;
            let _: ::core::cmp::AssertParamIsEq<MinusPunct>;
            let _: ::core::cmp::AssertParamIsEq<StarPunct>;
            let _: ::core::cmp::AssertParamIsEq<SlashPunct>;
            let _: ::core::cmp::AssertParamIsEq<PercentPunct>;
            let _: ::core::cmp::AssertParamIsEq<AndPunct>;
            let _: ::core::cmp::AssertParamIsEq<OrPunct>;
            let _: ::core::cmp::AssertParamIsEq<CaretPunct>;
            let _: ::core::cmp::AssertParamIsEq<ColonPunct>;
        }
    }
    impl Spanned for BinaryOperator {
        fn span(&self) -> Span {
            match self {
                Self::Add(field_0) => {
                    let span = None::<Span>;
                    let span = span.connect(<PlusPunct as Spanned>::span(&field_0));
                    span
                }
                Self::Sub(field_0) => {
                    let span = None::<Span>;
                    let span = span.connect(<MinusPunct as Spanned>::span(&field_0));
                    span
                }
                Self::Mul(field_0) => {
                    let span = None::<Span>;
                    let span = span.connect(<StarPunct as Spanned>::span(&field_0));
                    span
                }
                Self::Div(field_0) => {
                    let span = None::<Span>;
                    let span = span.connect(<SlashPunct as Spanned>::span(&field_0));
                    span
                }
                Self::Rem(field_0) => {
                    let span = None::<Span>;
                    let span = span.connect(<PercentPunct as Spanned>::span(&field_0));
                    span
                }
                Self::And(field_0) => {
                    let span = None::<Span>;
                    let span = span.connect(<AndPunct as Spanned>::span(&field_0));
                    span
                }
                Self::Or(field_0) => {
                    let span = None::<Span>;
                    let span = span.connect(<OrPunct as Spanned>::span(&field_0));
                    span
                }
                Self::Xor(field_0) => {
                    let span = None::<Span>;
                    let span = span.connect(<CaretPunct as Spanned>::span(&field_0));
                    span
                }
                Self::Bound(field_0) => {
                    let span = None::<Span>;
                    let span = span.connect(<ColonPunct as Spanned>::span(&field_0));
                    span
                }
            }
        }
    }
    impl OptionSpanned for BinaryOperator {
        fn option_span(&self) -> Option<Span> {
            Some(<Self as Spanned>::span(self))
        }
    }
    impl OptionParse for BinaryOperator {
        fn option_parse(
            parser: &mut impl Tokenizer,
            output: &mut Option<Self>,
        ) -> ParseExit {
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <PlusPunct as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <PlusPunct as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::Add { 0: primary_field });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::Add { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <MinusPunct as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <MinusPunct as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::Sub { 0: primary_field });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::Sub { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <StarPunct as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <StarPunct as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::Mul { 0: primary_field });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::Mul { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <SlashPunct as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <SlashPunct as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::Div { 0: primary_field });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::Div { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <PercentPunct as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <PercentPunct as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::Rem { 0: primary_field });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::Rem { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <AndPunct as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <AndPunct as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::And { 0: primary_field });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::And { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <OrPunct as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <OrPunct as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::Or { 0: primary_field });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::Or { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <CaretPunct as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <CaretPunct as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::Xor { 0: primary_field });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::Xor { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <ColonPunct as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <ColonPunct as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::Bound {
                                0: primary_field,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::Bound { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            ParseExit::Complete
        }
        fn detect(parser: &impl Tokenizer) -> Detection {
            'detect_enum: {
                Detection::NotDetected
                    | 'detect_fields: {
                        match <PlusPunct as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
                    | 'detect_fields: {
                        match <MinusPunct as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
                    | 'detect_fields: {
                        match <StarPunct as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
                    | 'detect_fields: {
                        match <SlashPunct as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
                    | 'detect_fields: {
                        match <PercentPunct as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
                    | 'detect_fields: {
                        match <AndPunct as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
                    | 'detect_fields: {
                        match <OrPunct as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
                    | 'detect_fields: {
                        match <CaretPunct as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
                    | 'detect_fields: {
                        match <ColonPunct as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
            }
        }
    }
    impl ParseDesc for BinaryOperator {
        fn desc() -> &'static str {
            "a binary operator"
        }
    }
    #[desc = "an expression"]
    pub struct Expr {
        pub lhs: UnaryExpr,
        pub bin_ops: Repeated<ExprBinaryPostfix>,
    }
    #[automatically_derived]
    impl ::core::fmt::Debug for Expr {
        #[inline]
        fn fmt(&self, f: &mut ::core::fmt::Formatter) -> ::core::fmt::Result {
            ::core::fmt::Formatter::debug_struct_field2_finish(
                f,
                "Expr",
                "lhs",
                &self.lhs,
                "bin_ops",
                &&self.bin_ops,
            )
        }
    }
    impl OptionParse for Expr {
        fn option_parse(
            parser: &mut impl Tokenizer,
            output: &mut Option<Self>,
        ) -> ParseExit {
            {
                #[allow(unused_labels)]
                'option_parse_fields: {
                    if 'detect_fields: {
                        match <UnaryExpr as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        match <Repeated<
                            ExprBinaryPostfix,
                        > as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    } == Detection::NotDetected
                    {
                        break 'option_parse_fields ParseExit::Complete;
                    }
                    let mut primary_field = None;
                    let primary_field_exit = {
                        let exit = <UnaryExpr as OptionParse>::option_parse(
                            parser,
                            &mut primary_field,
                        );
                        exit
                    };
                    let primary_field = primary_field.unwrap();
                    let mut secondary_field_0 = <Repeated<
                        ExprBinaryPostfix,
                    > as Parse>::parse_error();
                    if primary_field_exit == ParseExit::Cut {
                        *output = Some(Self {
                            lhs: primary_field,
                            bin_ops: secondary_field_0,
                        });
                        break 'option_parse_fields ParseExit::Cut;
                    }
                    match {
                        let exit = <Repeated<
                            ExprBinaryPostfix,
                        > as Parse>::parse(parser, &mut secondary_field_0);
                        exit
                    } {
                        ParseExit::Complete => {}
                        ParseExit::Cut => {
                            *output = Some(Self {
                                lhs: primary_field,
                                bin_ops: secondary_field_0,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                    }
                    *output = Some(Self {
                        lhs: primary_field,
                        bin_ops: secondary_field_0,
                    });
                    ParseExit::Complete
                }
            }
        }
        fn detect(parser: &impl Tokenizer) -> Detection {
            'detect_fields: {
                match <UnaryExpr as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                match <Repeated<ExprBinaryPostfix> as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                Detection::NotDetected
            }
        }
    }
    impl ParseDesc for Expr {
        fn desc() -> &'static str {
            "an expression"
        }
    }
    #[desc = "an expression prefix"]
    pub enum AngleExprPrefix {
        Neg(MinusPunct),
        Not(ExclamationPunct),
        Deref(StarPunct),
        Ref(AndPunct, ReferenceBounds),
        Eq(EqEqPunct),
        NotEq(NotEqPunct),
        MoreEq(MoreEqPunct),
        LessEq(LessEqPunct),
        Question(QuestionPunct),
        Lifetime(Lifetime),
    }
    #[automatically_derived]
    impl ::core::fmt::Debug for AngleExprPrefix {
        #[inline]
        fn fmt(&self, f: &mut ::core::fmt::Formatter) -> ::core::fmt::Result {
            match self {
                AngleExprPrefix::Neg(__self_0) => {
                    ::core::fmt::Formatter::debug_tuple_field1_finish(
                        f,
                        "Neg",
                        &__self_0,
                    )
                }
                AngleExprPrefix::Not(__self_0) => {
                    ::core::fmt::Formatter::debug_tuple_field1_finish(
                        f,
                        "Not",
                        &__self_0,
                    )
                }
                AngleExprPrefix::Deref(__self_0) => {
                    ::core::fmt::Formatter::debug_tuple_field1_finish(
                        f,
                        "Deref",
                        &__self_0,
                    )
                }
                AngleExprPrefix::Ref(__self_0, __self_1) => {
                    ::core::fmt::Formatter::debug_tuple_field2_finish(
                        f,
                        "Ref",
                        __self_0,
                        &__self_1,
                    )
                }
                AngleExprPrefix::Eq(__self_0) => {
                    ::core::fmt::Formatter::debug_tuple_field1_finish(f, "Eq", &__self_0)
                }
                AngleExprPrefix::NotEq(__self_0) => {
                    ::core::fmt::Formatter::debug_tuple_field1_finish(
                        f,
                        "NotEq",
                        &__self_0,
                    )
                }
                AngleExprPrefix::MoreEq(__self_0) => {
                    ::core::fmt::Formatter::debug_tuple_field1_finish(
                        f,
                        "MoreEq",
                        &__self_0,
                    )
                }
                AngleExprPrefix::LessEq(__self_0) => {
                    ::core::fmt::Formatter::debug_tuple_field1_finish(
                        f,
                        "LessEq",
                        &__self_0,
                    )
                }
                AngleExprPrefix::Question(__self_0) => {
                    ::core::fmt::Formatter::debug_tuple_field1_finish(
                        f,
                        "Question",
                        &__self_0,
                    )
                }
                AngleExprPrefix::Lifetime(__self_0) => {
                    ::core::fmt::Formatter::debug_tuple_field1_finish(
                        f,
                        "Lifetime",
                        &__self_0,
                    )
                }
            }
        }
    }
    impl OptionParse for AngleExprPrefix {
        fn option_parse(
            parser: &mut impl Tokenizer,
            output: &mut Option<Self>,
        ) -> ParseExit {
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <MinusPunct as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <MinusPunct as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::Neg { 0: primary_field });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::Neg { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <ExclamationPunct as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <ExclamationPunct as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::Not { 0: primary_field });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::Not { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <StarPunct as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <StarPunct as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::Deref {
                                0: primary_field,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::Deref { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <AndPunct as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            match <ReferenceBounds as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <AndPunct as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        let mut secondary_field_0 = <ReferenceBounds as Parse>::parse_error();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::Ref {
                                0: primary_field,
                                1: secondary_field_0,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        match {
                            let exit = <ReferenceBounds as Parse>::parse(
                                parser,
                                &mut secondary_field_0,
                            );
                            exit
                        } {
                            ParseExit::Complete => {}
                            ParseExit::Cut => {
                                *&mut variant_output = Some(Self::Ref {
                                    0: primary_field,
                                    1: secondary_field_0,
                                });
                                break 'option_parse_fields ParseExit::Cut;
                            }
                        }
                        *&mut variant_output = Some(Self::Ref {
                            0: primary_field,
                            1: secondary_field_0,
                        });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <EqEqPunct as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <EqEqPunct as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::Eq { 0: primary_field });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::Eq { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <NotEqPunct as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <NotEqPunct as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::NotEq {
                                0: primary_field,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::NotEq { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <MoreEqPunct as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <MoreEqPunct as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::MoreEq {
                                0: primary_field,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::MoreEq { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <LessEqPunct as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <LessEqPunct as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::LessEq {
                                0: primary_field,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::LessEq { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <QuestionPunct as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <QuestionPunct as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::Question {
                                0: primary_field,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::Question { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <Lifetime as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <Lifetime as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::Lifetime {
                                0: primary_field,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::Lifetime { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            ParseExit::Complete
        }
        fn detect(parser: &impl Tokenizer) -> Detection {
            'detect_enum: {
                Detection::NotDetected
                    | 'detect_fields: {
                        match <MinusPunct as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
                    | 'detect_fields: {
                        match <ExclamationPunct as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
                    | 'detect_fields: {
                        match <StarPunct as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
                    | 'detect_fields: {
                        match <AndPunct as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        match <ReferenceBounds as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
                    | 'detect_fields: {
                        match <EqEqPunct as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
                    | 'detect_fields: {
                        match <NotEqPunct as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
                    | 'detect_fields: {
                        match <MoreEqPunct as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
                    | 'detect_fields: {
                        match <LessEqPunct as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
                    | 'detect_fields: {
                        match <QuestionPunct as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
                    | 'detect_fields: {
                        match <Lifetime as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
            }
        }
    }
    impl ParseDesc for AngleExprPrefix {
        fn desc() -> &'static str {
            "an expression prefix"
        }
    }
    #[desc = "an expression"]
    pub struct AngleUnaryExpr {
        pub attrs: Repeated<Attr>,
        pub prefix: Repeated<AngleExprPrefix>,
        pub core: Try<ExprCore>,
        pub postfix: Repeated<ExprPostfix>,
    }
    #[automatically_derived]
    impl ::core::fmt::Debug for AngleUnaryExpr {
        #[inline]
        fn fmt(&self, f: &mut ::core::fmt::Formatter) -> ::core::fmt::Result {
            ::core::fmt::Formatter::debug_struct_field4_finish(
                f,
                "AngleUnaryExpr",
                "attrs",
                &self.attrs,
                "prefix",
                &self.prefix,
                "core",
                &self.core,
                "postfix",
                &&self.postfix,
            )
        }
    }
    impl OptionParse for AngleUnaryExpr {
        fn option_parse(
            parser: &mut impl Tokenizer,
            output: &mut Option<Self>,
        ) -> ParseExit {
            {
                #[allow(unused_labels)]
                'option_parse_fields: {
                    if 'detect_fields: {
                        match <Repeated<Attr> as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        match <Repeated<
                            AngleExprPrefix,
                        > as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        match <Try<ExprCore> as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        match <Repeated<ExprPostfix> as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    } == Detection::NotDetected
                    {
                        break 'option_parse_fields ParseExit::Complete;
                    }
                    let mut primary_field = None;
                    let primary_field_exit = {
                        let exit = <Repeated<
                            Attr,
                        > as OptionParse>::option_parse(parser, &mut primary_field);
                        exit
                    };
                    let primary_field = primary_field.unwrap();
                    let mut secondary_field_0 = <Repeated<
                        AngleExprPrefix,
                    > as Parse>::parse_error();
                    let mut secondary_field_1 = <Try<ExprCore> as Parse>::parse_error();
                    let mut secondary_field_2 = <Repeated<
                        ExprPostfix,
                    > as Parse>::parse_error();
                    if primary_field_exit == ParseExit::Cut {
                        *output = Some(Self {
                            attrs: primary_field,
                            prefix: secondary_field_0,
                            core: secondary_field_1,
                            postfix: secondary_field_2,
                        });
                        break 'option_parse_fields ParseExit::Cut;
                    }
                    match {
                        let exit = <Repeated<
                            AngleExprPrefix,
                        > as Parse>::parse(parser, &mut secondary_field_0);
                        exit
                    } {
                        ParseExit::Complete => {}
                        ParseExit::Cut => {
                            *output = Some(Self {
                                attrs: primary_field,
                                prefix: secondary_field_0,
                                core: secondary_field_1,
                                postfix: secondary_field_2,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                    }
                    match {
                        let exit = <Try<
                            ExprCore,
                        > as Parse>::parse(parser, &mut secondary_field_1);
                        exit
                    } {
                        ParseExit::Complete => {}
                        ParseExit::Cut => {
                            *output = Some(Self {
                                attrs: primary_field,
                                prefix: secondary_field_0,
                                core: secondary_field_1,
                                postfix: secondary_field_2,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                    }
                    match {
                        let exit = <Repeated<
                            ExprPostfix,
                        > as Parse>::parse(parser, &mut secondary_field_2);
                        exit
                    } {
                        ParseExit::Complete => {}
                        ParseExit::Cut => {
                            *output = Some(Self {
                                attrs: primary_field,
                                prefix: secondary_field_0,
                                core: secondary_field_1,
                                postfix: secondary_field_2,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                    }
                    *output = Some(Self {
                        attrs: primary_field,
                        prefix: secondary_field_0,
                        core: secondary_field_1,
                        postfix: secondary_field_2,
                    });
                    ParseExit::Complete
                }
            }
        }
        fn detect(parser: &impl Tokenizer) -> Detection {
            'detect_fields: {
                match <Repeated<Attr> as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                match <Repeated<AngleExprPrefix> as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                match <Try<ExprCore> as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                match <Repeated<ExprPostfix> as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                Detection::NotDetected
            }
        }
    }
    impl ParseDesc for AngleUnaryExpr {
        fn desc() -> &'static str {
            "an expression"
        }
    }
    #[desc = "an expression"]
    pub struct AngleExpr {
        pub lhs: AngleUnaryExpr,
        pub bin_ops: Repeated<ExprBinaryPostfix>,
    }
    #[automatically_derived]
    impl ::core::fmt::Debug for AngleExpr {
        #[inline]
        fn fmt(&self, f: &mut ::core::fmt::Formatter) -> ::core::fmt::Result {
            ::core::fmt::Formatter::debug_struct_field2_finish(
                f,
                "AngleExpr",
                "lhs",
                &self.lhs,
                "bin_ops",
                &&self.bin_ops,
            )
        }
    }
    impl OptionParse for AngleExpr {
        fn option_parse(
            parser: &mut impl Tokenizer,
            output: &mut Option<Self>,
        ) -> ParseExit {
            {
                #[allow(unused_labels)]
                'option_parse_fields: {
                    if 'detect_fields: {
                        match <AngleUnaryExpr as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        match <Repeated<
                            ExprBinaryPostfix,
                        > as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    } == Detection::NotDetected
                    {
                        break 'option_parse_fields ParseExit::Complete;
                    }
                    let mut primary_field = None;
                    let primary_field_exit = {
                        let exit = <AngleUnaryExpr as OptionParse>::option_parse(
                            parser,
                            &mut primary_field,
                        );
                        exit
                    };
                    let primary_field = primary_field.unwrap();
                    let mut secondary_field_0 = <Repeated<
                        ExprBinaryPostfix,
                    > as Parse>::parse_error();
                    if primary_field_exit == ParseExit::Cut {
                        *output = Some(Self {
                            lhs: primary_field,
                            bin_ops: secondary_field_0,
                        });
                        break 'option_parse_fields ParseExit::Cut;
                    }
                    match {
                        let exit = <Repeated<
                            ExprBinaryPostfix,
                        > as Parse>::parse(parser, &mut secondary_field_0);
                        exit
                    } {
                        ParseExit::Complete => {}
                        ParseExit::Cut => {
                            *output = Some(Self {
                                lhs: primary_field,
                                bin_ops: secondary_field_0,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                    }
                    *output = Some(Self {
                        lhs: primary_field,
                        bin_ops: secondary_field_0,
                    });
                    ParseExit::Complete
                }
            }
        }
        fn detect(parser: &impl Tokenizer) -> Detection {
            'detect_fields: {
                match <AngleUnaryExpr as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                match <Repeated<ExprBinaryPostfix> as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                Detection::NotDetected
            }
        }
    }
    impl ParseDesc for AngleExpr {
        fn desc() -> &'static str {
            "an expression"
        }
    }
    #[desc = "an expression"]
    pub enum BraceExprCore {
        Ident(Ident),
        Keyword(ExprKeyword),
        Literal(Literal),
        Array(Array),
        Tuple(Tuple),
        If(If),
        Loop(Loop),
        While(While),
        Until(Until),
        For(For),
    }
    #[automatically_derived]
    impl ::core::fmt::Debug for BraceExprCore {
        #[inline]
        fn fmt(&self, f: &mut ::core::fmt::Formatter) -> ::core::fmt::Result {
            match self {
                BraceExprCore::Ident(__self_0) => {
                    ::core::fmt::Formatter::debug_tuple_field1_finish(
                        f,
                        "Ident",
                        &__self_0,
                    )
                }
                BraceExprCore::Keyword(__self_0) => {
                    ::core::fmt::Formatter::debug_tuple_field1_finish(
                        f,
                        "Keyword",
                        &__self_0,
                    )
                }
                BraceExprCore::Literal(__self_0) => {
                    ::core::fmt::Formatter::debug_tuple_field1_finish(
                        f,
                        "Literal",
                        &__self_0,
                    )
                }
                BraceExprCore::Array(__self_0) => {
                    ::core::fmt::Formatter::debug_tuple_field1_finish(
                        f,
                        "Array",
                        &__self_0,
                    )
                }
                BraceExprCore::Tuple(__self_0) => {
                    ::core::fmt::Formatter::debug_tuple_field1_finish(
                        f,
                        "Tuple",
                        &__self_0,
                    )
                }
                BraceExprCore::If(__self_0) => {
                    ::core::fmt::Formatter::debug_tuple_field1_finish(f, "If", &__self_0)
                }
                BraceExprCore::Loop(__self_0) => {
                    ::core::fmt::Formatter::debug_tuple_field1_finish(
                        f,
                        "Loop",
                        &__self_0,
                    )
                }
                BraceExprCore::While(__self_0) => {
                    ::core::fmt::Formatter::debug_tuple_field1_finish(
                        f,
                        "While",
                        &__self_0,
                    )
                }
                BraceExprCore::Until(__self_0) => {
                    ::core::fmt::Formatter::debug_tuple_field1_finish(
                        f,
                        "Until",
                        &__self_0,
                    )
                }
                BraceExprCore::For(__self_0) => {
                    ::core::fmt::Formatter::debug_tuple_field1_finish(
                        f,
                        "For",
                        &__self_0,
                    )
                }
            }
        }
    }
    impl OptionParse for BraceExprCore {
        fn option_parse(
            parser: &mut impl Tokenizer,
            output: &mut Option<Self>,
        ) -> ParseExit {
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <Ident as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <Ident as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::Ident {
                                0: primary_field,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::Ident { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <ExprKeyword as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <ExprKeyword as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::Keyword {
                                0: primary_field,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::Keyword { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <Literal as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <Literal as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::Literal {
                                0: primary_field,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::Literal { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <Array as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <Array as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::Array {
                                0: primary_field,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::Array { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <Tuple as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <Tuple as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::Tuple {
                                0: primary_field,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::Tuple { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <If as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <If as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::If { 0: primary_field });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::If { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <Loop as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <Loop as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::Loop { 0: primary_field });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::Loop { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <While as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <While as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::While {
                                0: primary_field,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::While { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <Until as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <Until as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::Until {
                                0: primary_field,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::Until { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <For as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <For as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::For { 0: primary_field });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::For { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            ParseExit::Complete
        }
        fn detect(parser: &impl Tokenizer) -> Detection {
            'detect_enum: {
                Detection::NotDetected
                    | 'detect_fields: {
                        match <Ident as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
                    | 'detect_fields: {
                        match <ExprKeyword as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
                    | 'detect_fields: {
                        match <Literal as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
                    | 'detect_fields: {
                        match <Array as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
                    | 'detect_fields: {
                        match <Tuple as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
                    | 'detect_fields: {
                        match <If as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
                    | 'detect_fields: {
                        match <Loop as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
                    | 'detect_fields: {
                        match <While as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
                    | 'detect_fields: {
                        match <Until as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
                    | 'detect_fields: {
                        match <For as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
            }
        }
    }
    impl ParseDesc for BraceExprCore {
        fn desc() -> &'static str {
            "an expression"
        }
    }
    #[desc = "an expression postfix"]
    pub enum BraceExprPostfix {
        Member(DotPunct, Try<Member>),
        Call(Tuple),
        Index(Array),
        Generics(GenericArgs),
    }
    #[automatically_derived]
    impl ::core::fmt::Debug for BraceExprPostfix {
        #[inline]
        fn fmt(&self, f: &mut ::core::fmt::Formatter) -> ::core::fmt::Result {
            match self {
                BraceExprPostfix::Member(__self_0, __self_1) => {
                    ::core::fmt::Formatter::debug_tuple_field2_finish(
                        f,
                        "Member",
                        __self_0,
                        &__self_1,
                    )
                }
                BraceExprPostfix::Call(__self_0) => {
                    ::core::fmt::Formatter::debug_tuple_field1_finish(
                        f,
                        "Call",
                        &__self_0,
                    )
                }
                BraceExprPostfix::Index(__self_0) => {
                    ::core::fmt::Formatter::debug_tuple_field1_finish(
                        f,
                        "Index",
                        &__self_0,
                    )
                }
                BraceExprPostfix::Generics(__self_0) => {
                    ::core::fmt::Formatter::debug_tuple_field1_finish(
                        f,
                        "Generics",
                        &__self_0,
                    )
                }
            }
        }
    }
    impl OptionParse for BraceExprPostfix {
        fn option_parse(
            parser: &mut impl Tokenizer,
            output: &mut Option<Self>,
        ) -> ParseExit {
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <DotPunct as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            match <Try<Member> as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <DotPunct as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        let mut secondary_field_0 = <Try<
                            Member,
                        > as Parse>::parse_error();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::Member {
                                0: primary_field,
                                1: secondary_field_0,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        match {
                            let exit = <Try<
                                Member,
                            > as Parse>::parse(parser, &mut secondary_field_0);
                            exit
                        } {
                            ParseExit::Complete => {}
                            ParseExit::Cut => {
                                *&mut variant_output = Some(Self::Member {
                                    0: primary_field,
                                    1: secondary_field_0,
                                });
                                break 'option_parse_fields ParseExit::Cut;
                            }
                        }
                        *&mut variant_output = Some(Self::Member {
                            0: primary_field,
                            1: secondary_field_0,
                        });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <Tuple as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <Tuple as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::Call { 0: primary_field });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::Call { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <Array as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <Array as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::Index {
                                0: primary_field,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::Index { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <GenericArgs as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <GenericArgs as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::Generics {
                                0: primary_field,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::Generics { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            ParseExit::Complete
        }
        fn detect(parser: &impl Tokenizer) -> Detection {
            'detect_enum: {
                Detection::NotDetected
                    | 'detect_fields: {
                        match <DotPunct as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        match <Try<Member> as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
                    | 'detect_fields: {
                        match <Tuple as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
                    | 'detect_fields: {
                        match <Array as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
                    | 'detect_fields: {
                        match <GenericArgs as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
            }
        }
    }
    impl ParseDesc for BraceExprPostfix {
        fn desc() -> &'static str {
            "an expression postfix"
        }
    }
    #[desc = "an expression"]
    pub struct UnaryBraceExpr {
        pub attrs: Repeated<Attr>,
        pub prefix: Repeated<ExprPrefix>,
        pub core: Try<BraceExprCore>,
        pub postfix: Repeated<BraceExprPostfix>,
    }
    #[automatically_derived]
    impl ::core::fmt::Debug for UnaryBraceExpr {
        #[inline]
        fn fmt(&self, f: &mut ::core::fmt::Formatter) -> ::core::fmt::Result {
            ::core::fmt::Formatter::debug_struct_field4_finish(
                f,
                "UnaryBraceExpr",
                "attrs",
                &self.attrs,
                "prefix",
                &self.prefix,
                "core",
                &self.core,
                "postfix",
                &&self.postfix,
            )
        }
    }
    impl OptionParse for UnaryBraceExpr {
        fn option_parse(
            parser: &mut impl Tokenizer,
            output: &mut Option<Self>,
        ) -> ParseExit {
            {
                #[allow(unused_labels)]
                'option_parse_fields: {
                    if 'detect_fields: {
                        match <Repeated<Attr> as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        match <Repeated<ExprPrefix> as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        match <Try<BraceExprCore> as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        match <Repeated<
                            BraceExprPostfix,
                        > as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    } == Detection::NotDetected
                    {
                        break 'option_parse_fields ParseExit::Complete;
                    }
                    let mut primary_field = None;
                    let primary_field_exit = {
                        let exit = <Repeated<
                            Attr,
                        > as OptionParse>::option_parse(parser, &mut primary_field);
                        exit
                    };
                    let primary_field = primary_field.unwrap();
                    let mut secondary_field_0 = <Repeated<
                        ExprPrefix,
                    > as Parse>::parse_error();
                    let mut secondary_field_1 = <Try<
                        BraceExprCore,
                    > as Parse>::parse_error();
                    let mut secondary_field_2 = <Repeated<
                        BraceExprPostfix,
                    > as Parse>::parse_error();
                    if primary_field_exit == ParseExit::Cut {
                        *output = Some(Self {
                            attrs: primary_field,
                            prefix: secondary_field_0,
                            core: secondary_field_1,
                            postfix: secondary_field_2,
                        });
                        break 'option_parse_fields ParseExit::Cut;
                    }
                    match {
                        let exit = <Repeated<
                            ExprPrefix,
                        > as Parse>::parse(parser, &mut secondary_field_0);
                        exit
                    } {
                        ParseExit::Complete => {}
                        ParseExit::Cut => {
                            *output = Some(Self {
                                attrs: primary_field,
                                prefix: secondary_field_0,
                                core: secondary_field_1,
                                postfix: secondary_field_2,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                    }
                    match {
                        let exit = <Try<
                            BraceExprCore,
                        > as Parse>::parse(parser, &mut secondary_field_1);
                        exit
                    } {
                        ParseExit::Complete => {}
                        ParseExit::Cut => {
                            *output = Some(Self {
                                attrs: primary_field,
                                prefix: secondary_field_0,
                                core: secondary_field_1,
                                postfix: secondary_field_2,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                    }
                    match {
                        let exit = <Repeated<
                            BraceExprPostfix,
                        > as Parse>::parse(parser, &mut secondary_field_2);
                        exit
                    } {
                        ParseExit::Complete => {}
                        ParseExit::Cut => {
                            *output = Some(Self {
                                attrs: primary_field,
                                prefix: secondary_field_0,
                                core: secondary_field_1,
                                postfix: secondary_field_2,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                    }
                    *output = Some(Self {
                        attrs: primary_field,
                        prefix: secondary_field_0,
                        core: secondary_field_1,
                        postfix: secondary_field_2,
                    });
                    ParseExit::Complete
                }
            }
        }
        fn detect(parser: &impl Tokenizer) -> Detection {
            'detect_fields: {
                match <Repeated<Attr> as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                match <Repeated<ExprPrefix> as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                match <Try<BraceExprCore> as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                match <Repeated<BraceExprPostfix> as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                Detection::NotDetected
            }
        }
    }
    impl ParseDesc for UnaryBraceExpr {
        fn desc() -> &'static str {
            "an expression"
        }
    }
    #[desc = "an expression"]
    pub struct BraceExpr {
        pub lhs: UnaryBraceExpr,
        pub bin_ops: Repeated<ExprBinaryPostfix>,
    }
    #[automatically_derived]
    impl ::core::fmt::Debug for BraceExpr {
        #[inline]
        fn fmt(&self, f: &mut ::core::fmt::Formatter) -> ::core::fmt::Result {
            ::core::fmt::Formatter::debug_struct_field2_finish(
                f,
                "BraceExpr",
                "lhs",
                &self.lhs,
                "bin_ops",
                &&self.bin_ops,
            )
        }
    }
    impl OptionParse for BraceExpr {
        fn option_parse(
            parser: &mut impl Tokenizer,
            output: &mut Option<Self>,
        ) -> ParseExit {
            {
                #[allow(unused_labels)]
                'option_parse_fields: {
                    if 'detect_fields: {
                        match <UnaryBraceExpr as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        match <Repeated<
                            ExprBinaryPostfix,
                        > as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    } == Detection::NotDetected
                    {
                        break 'option_parse_fields ParseExit::Complete;
                    }
                    let mut primary_field = None;
                    let primary_field_exit = {
                        let exit = <UnaryBraceExpr as OptionParse>::option_parse(
                            parser,
                            &mut primary_field,
                        );
                        exit
                    };
                    let primary_field = primary_field.unwrap();
                    let mut secondary_field_0 = <Repeated<
                        ExprBinaryPostfix,
                    > as Parse>::parse_error();
                    if primary_field_exit == ParseExit::Cut {
                        *output = Some(Self {
                            lhs: primary_field,
                            bin_ops: secondary_field_0,
                        });
                        break 'option_parse_fields ParseExit::Cut;
                    }
                    match {
                        let exit = <Repeated<
                            ExprBinaryPostfix,
                        > as Parse>::parse(parser, &mut secondary_field_0);
                        exit
                    } {
                        ParseExit::Complete => {}
                        ParseExit::Cut => {
                            *output = Some(Self {
                                lhs: primary_field,
                                bin_ops: secondary_field_0,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                    }
                    *output = Some(Self {
                        lhs: primary_field,
                        bin_ops: secondary_field_0,
                    });
                    ParseExit::Complete
                }
            }
        }
        fn detect(parser: &impl Tokenizer) -> Detection {
            'detect_fields: {
                match <UnaryBraceExpr as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                match <Repeated<ExprBinaryPostfix> as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                Detection::NotDetected
            }
        }
    }
    impl ParseDesc for BraceExpr {
        fn desc() -> &'static str {
            "an expression"
        }
    }
    #[desc = "an array"]
    #[framed]
    pub struct Array {
        pub delims: Frame<Brackets>,
        pub items: List<Expr>,
    }
    #[automatically_derived]
    impl ::core::fmt::Debug for Array {
        #[inline]
        fn fmt(&self, f: &mut ::core::fmt::Formatter) -> ::core::fmt::Result {
            ::core::fmt::Formatter::debug_struct_field2_finish(
                f,
                "Array",
                "delims",
                &self.delims,
                "items",
                &&self.items,
            )
        }
    }
    impl OptionParse for Array {
        fn option_parse(
            parser: &mut impl Tokenizer,
            output: &mut Option<Self>,
        ) -> ParseExit {
            {
                let mut frame_output = None;
                let parse_exit = <Frame<
                    Brackets,
                >>::option_parse_frame(
                    parser,
                    &mut frame_output,
                    |parser| {
                        #[allow(unused_parens)]
                        let (mut field_1) = (<List<Expr> as Parse>::parse_error());
                        #[allow(unused_labels)]
                        let parse_exit = 'parse_fields: {
                            match {
                                let exit = <List<
                                    Expr,
                                > as Parse>::parse(parser, &mut field_1);
                                exit
                            } {
                                ParseExit::Complete => {}
                                ParseExit::Cut => {
                                    break 'parse_fields ParseExit::Cut;
                                }
                            }
                            ParseExit::Complete
                        };
                        ((field_1), parse_exit)
                    },
                    |parser| {
                        #[allow(unused_parens)]
                        let (mut field_1) = (<List<Expr> as Parse>::parse_error());
                        #[allow(unused_labels)]
                        let parse_exit = 'parse_fields: {
                            match {
                                let exit = <List<
                                    Expr,
                                > as Parse>::parse(parser, &mut field_1);
                                exit
                            } {
                                ParseExit::Complete => {}
                                ParseExit::Cut => {
                                    break 'parse_fields ParseExit::Cut;
                                }
                            }
                            ParseExit::Complete
                        };
                        ((field_1), parse_exit)
                    },
                );
                #[allow(unused_parens)]
                if let Some((frame, (field_1))) = frame_output {
                    *output = Some(Self {
                        delims: frame,
                        items: field_1,
                    });
                }
                parse_exit
            }
        }
        fn detect(parser: &impl Tokenizer) -> Detection {
            <Frame<Brackets>>::detect_frame(parser)
        }
    }
    impl ParseDesc for Array {
        fn desc() -> &'static str {
            "an array"
        }
    }
    #[desc = "a tuple"]
    #[framed]
    pub struct Tuple {
        pub delims: Frame<Parens>,
        pub items: List<Expr>,
    }
    #[automatically_derived]
    impl ::core::fmt::Debug for Tuple {
        #[inline]
        fn fmt(&self, f: &mut ::core::fmt::Formatter) -> ::core::fmt::Result {
            ::core::fmt::Formatter::debug_struct_field2_finish(
                f,
                "Tuple",
                "delims",
                &self.delims,
                "items",
                &&self.items,
            )
        }
    }
    impl OptionParse for Tuple {
        fn option_parse(
            parser: &mut impl Tokenizer,
            output: &mut Option<Self>,
        ) -> ParseExit {
            {
                let mut frame_output = None;
                let parse_exit = <Frame<
                    Parens,
                >>::option_parse_frame(
                    parser,
                    &mut frame_output,
                    |parser| {
                        #[allow(unused_parens)]
                        let (mut field_1) = (<List<Expr> as Parse>::parse_error());
                        #[allow(unused_labels)]
                        let parse_exit = 'parse_fields: {
                            match {
                                let exit = <List<
                                    Expr,
                                > as Parse>::parse(parser, &mut field_1);
                                exit
                            } {
                                ParseExit::Complete => {}
                                ParseExit::Cut => {
                                    break 'parse_fields ParseExit::Cut;
                                }
                            }
                            ParseExit::Complete
                        };
                        ((field_1), parse_exit)
                    },
                    |parser| {
                        #[allow(unused_parens)]
                        let (mut field_1) = (<List<Expr> as Parse>::parse_error());
                        #[allow(unused_labels)]
                        let parse_exit = 'parse_fields: {
                            match {
                                let exit = <List<
                                    Expr,
                                > as Parse>::parse(parser, &mut field_1);
                                exit
                            } {
                                ParseExit::Complete => {}
                                ParseExit::Cut => {
                                    break 'parse_fields ParseExit::Cut;
                                }
                            }
                            ParseExit::Complete
                        };
                        ((field_1), parse_exit)
                    },
                );
                #[allow(unused_parens)]
                if let Some((frame, (field_1))) = frame_output {
                    *output = Some(Self {
                        delims: frame,
                        items: field_1,
                    });
                }
                parse_exit
            }
        }
        fn detect(parser: &impl Tokenizer) -> Detection {
            <Frame<Parens>>::detect_frame(parser)
        }
    }
    impl ParseDesc for Tuple {
        fn desc() -> &'static str {
            "a tuple"
        }
    }
    #[desc = "`{ }`"]
    #[framed]
    pub struct Construct {
        pub delims: Frame<Braces>,
        pub items: List<ConstructField>,
    }
    #[automatically_derived]
    impl ::core::fmt::Debug for Construct {
        #[inline]
        fn fmt(&self, f: &mut ::core::fmt::Formatter) -> ::core::fmt::Result {
            ::core::fmt::Formatter::debug_struct_field2_finish(
                f,
                "Construct",
                "delims",
                &self.delims,
                "items",
                &&self.items,
            )
        }
    }
    impl OptionParse for Construct {
        fn option_parse(
            parser: &mut impl Tokenizer,
            output: &mut Option<Self>,
        ) -> ParseExit {
            {
                let mut frame_output = None;
                let parse_exit = <Frame<
                    Braces,
                >>::option_parse_frame(
                    parser,
                    &mut frame_output,
                    |parser| {
                        #[allow(unused_parens)]
                        let (mut field_1) = (<List<
                            ConstructField,
                        > as Parse>::parse_error());
                        #[allow(unused_labels)]
                        let parse_exit = 'parse_fields: {
                            match {
                                let exit = <List<
                                    ConstructField,
                                > as Parse>::parse(parser, &mut field_1);
                                exit
                            } {
                                ParseExit::Complete => {}
                                ParseExit::Cut => {
                                    break 'parse_fields ParseExit::Cut;
                                }
                            }
                            ParseExit::Complete
                        };
                        ((field_1), parse_exit)
                    },
                    |parser| {
                        #[allow(unused_parens)]
                        let (mut field_1) = (<List<
                            ConstructField,
                        > as Parse>::parse_error());
                        #[allow(unused_labels)]
                        let parse_exit = 'parse_fields: {
                            match {
                                let exit = <List<
                                    ConstructField,
                                > as Parse>::parse(parser, &mut field_1);
                                exit
                            } {
                                ParseExit::Complete => {}
                                ParseExit::Cut => {
                                    break 'parse_fields ParseExit::Cut;
                                }
                            }
                            ParseExit::Complete
                        };
                        ((field_1), parse_exit)
                    },
                );
                #[allow(unused_parens)]
                if let Some((frame, (field_1))) = frame_output {
                    *output = Some(Self {
                        delims: frame,
                        items: field_1,
                    });
                }
                parse_exit
            }
        }
        fn detect(parser: &impl Tokenizer) -> Detection {
            <Frame<Braces>>::detect_frame(parser)
        }
    }
    impl ParseDesc for Construct {
        fn desc() -> &'static str {
            "`{ }`"
        }
    }
    #[desc = "an identifier"]
    pub struct ConstructField {
        #[highlight(HighlightColor::Cyan)]
        pub ident: Ident,
        pub set: Try<Set>,
    }
    #[automatically_derived]
    impl ::core::fmt::Debug for ConstructField {
        #[inline]
        fn fmt(&self, f: &mut ::core::fmt::Formatter) -> ::core::fmt::Result {
            ::core::fmt::Formatter::debug_struct_field2_finish(
                f,
                "ConstructField",
                "ident",
                &self.ident,
                "set",
                &&self.set,
            )
        }
    }
    impl OptionParse for ConstructField {
        fn option_parse(
            parser: &mut impl Tokenizer,
            output: &mut Option<Self>,
        ) -> ParseExit {
            {
                #[allow(unused_labels)]
                'option_parse_fields: {
                    if 'detect_fields: {
                        match <Ident as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        match <Try<Set> as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    } == Detection::NotDetected
                    {
                        break 'option_parse_fields ParseExit::Complete;
                    }
                    let mut primary_field = None;
                    let primary_field_exit = {
                        let exit = <Ident as OptionParse>::option_parse(
                            parser,
                            &mut primary_field,
                        );
                        <Option<
                            Ident,
                        > as Highlightable>::highlight(
                            &mut primary_field,
                            HighlightColor::Cyan,
                            &mut parser.highlights(),
                        );
                        exit
                    };
                    let primary_field = primary_field.unwrap();
                    let mut secondary_field_0 = <Try<Set> as Parse>::parse_error();
                    if primary_field_exit == ParseExit::Cut {
                        *output = Some(Self {
                            ident: primary_field,
                            set: secondary_field_0,
                        });
                        break 'option_parse_fields ParseExit::Cut;
                    }
                    match {
                        let exit = <Try<
                            Set,
                        > as Parse>::parse(parser, &mut secondary_field_0);
                        exit
                    } {
                        ParseExit::Complete => {}
                        ParseExit::Cut => {
                            *output = Some(Self {
                                ident: primary_field,
                                set: secondary_field_0,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                    }
                    *output = Some(Self {
                        ident: primary_field,
                        set: secondary_field_0,
                    });
                    ParseExit::Complete
                }
            }
        }
        fn detect(parser: &impl Tokenizer) -> Detection {
            'detect_fields: {
                match <Ident as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                match <Try<Set> as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                Detection::NotDetected
            }
        }
    }
    impl ParseDesc for ConstructField {
        fn desc() -> &'static str {
            "an identifier"
        }
    }
    #[desc = "`if`"]
    pub struct If {
        pub keyword: IfKeyword,
        pub condition: Try<Box<BraceExpr>>,
        pub body: IfBody,
    }
    #[automatically_derived]
    impl ::core::fmt::Debug for If {
        #[inline]
        fn fmt(&self, f: &mut ::core::fmt::Formatter) -> ::core::fmt::Result {
            ::core::fmt::Formatter::debug_struct_field3_finish(
                f,
                "If",
                "keyword",
                &self.keyword,
                "condition",
                &self.condition,
                "body",
                &&self.body,
            )
        }
    }
    impl OptionParse for If {
        fn option_parse(
            parser: &mut impl Tokenizer,
            output: &mut Option<Self>,
        ) -> ParseExit {
            {
                #[allow(unused_labels)]
                'option_parse_fields: {
                    if 'detect_fields: {
                        match <IfKeyword as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        match <Try<Box<BraceExpr>> as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        match <IfBody as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    } == Detection::NotDetected
                    {
                        break 'option_parse_fields ParseExit::Complete;
                    }
                    let mut primary_field = None;
                    let primary_field_exit = {
                        let exit = <IfKeyword as OptionParse>::option_parse(
                            parser,
                            &mut primary_field,
                        );
                        exit
                    };
                    let primary_field = primary_field.unwrap();
                    let mut secondary_field_0 = <Try<
                        Box<BraceExpr>,
                    > as Parse>::parse_error();
                    let mut secondary_field_1 = <IfBody as Parse>::parse_error();
                    if primary_field_exit == ParseExit::Cut {
                        *output = Some(Self {
                            keyword: primary_field,
                            condition: secondary_field_0,
                            body: secondary_field_1,
                        });
                        break 'option_parse_fields ParseExit::Cut;
                    }
                    match {
                        let exit = <Try<
                            Box<BraceExpr>,
                        > as Parse>::parse(parser, &mut secondary_field_0);
                        exit
                    } {
                        ParseExit::Complete => {}
                        ParseExit::Cut => {
                            *output = Some(Self {
                                keyword: primary_field,
                                condition: secondary_field_0,
                                body: secondary_field_1,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                    }
                    match {
                        let exit = <IfBody as Parse>::parse(
                            parser,
                            &mut secondary_field_1,
                        );
                        exit
                    } {
                        ParseExit::Complete => {}
                        ParseExit::Cut => {
                            *output = Some(Self {
                                keyword: primary_field,
                                condition: secondary_field_0,
                                body: secondary_field_1,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                    }
                    *output = Some(Self {
                        keyword: primary_field,
                        condition: secondary_field_0,
                        body: secondary_field_1,
                    });
                    ParseExit::Complete
                }
            }
        }
        fn detect(parser: &impl Tokenizer) -> Detection {
            'detect_fields: {
                match <IfKeyword as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                match <Try<Box<BraceExpr>> as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                match <IfBody as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                Detection::NotDetected
            }
        }
    }
    impl ParseDesc for If {
        fn desc() -> &'static str {
            "`if`"
        }
    }
    pub enum IfBody {
        Then { keyword: ThenKeyword, expr: Try<Box<Expr>>, else_: Option<ThenElse> },
        #[fallback]
        Block { block: Try<Block>, else_: Option<Else> },
    }
    #[automatically_derived]
    impl ::core::fmt::Debug for IfBody {
        #[inline]
        fn fmt(&self, f: &mut ::core::fmt::Formatter) -> ::core::fmt::Result {
            match self {
                IfBody::Then { keyword: __self_0, expr: __self_1, else_: __self_2 } => {
                    ::core::fmt::Formatter::debug_struct_field3_finish(
                        f,
                        "Then",
                        "keyword",
                        __self_0,
                        "expr",
                        __self_1,
                        "else_",
                        &__self_2,
                    )
                }
                IfBody::Block { block: __self_0, else_: __self_1 } => {
                    ::core::fmt::Formatter::debug_struct_field2_finish(
                        f,
                        "Block",
                        "block",
                        __self_0,
                        "else_",
                        &__self_1,
                    )
                }
            }
        }
    }
    impl OptionParse for IfBody {
        fn option_parse(
            parser: &mut impl Tokenizer,
            output: &mut Option<Self>,
        ) -> ParseExit {
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <ThenKeyword as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            match <Try<Box<Expr>> as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            match <Option<ThenElse> as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <ThenKeyword as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        let mut secondary_field_0 = <Try<
                            Box<Expr>,
                        > as Parse>::parse_error();
                        let mut secondary_field_1 = <Option<
                            ThenElse,
                        > as Parse>::parse_error();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::Then {
                                keyword: primary_field,
                                expr: secondary_field_0,
                                else_: secondary_field_1,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        match {
                            let exit = <Try<
                                Box<Expr>,
                            > as Parse>::parse(parser, &mut secondary_field_0);
                            exit
                        } {
                            ParseExit::Complete => {}
                            ParseExit::Cut => {
                                *&mut variant_output = Some(Self::Then {
                                    keyword: primary_field,
                                    expr: secondary_field_0,
                                    else_: secondary_field_1,
                                });
                                break 'option_parse_fields ParseExit::Cut;
                            }
                        }
                        match {
                            let exit = <Option<
                                ThenElse,
                            > as Parse>::parse(parser, &mut secondary_field_1);
                            exit
                        } {
                            ParseExit::Complete => {}
                            ParseExit::Cut => {
                                *&mut variant_output = Some(Self::Then {
                                    keyword: primary_field,
                                    expr: secondary_field_0,
                                    else_: secondary_field_1,
                                });
                                break 'option_parse_fields ParseExit::Cut;
                            }
                        }
                        *&mut variant_output = Some(Self::Then {
                            keyword: primary_field,
                            expr: secondary_field_0,
                            else_: secondary_field_1,
                        });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            {
                #[allow(unused_labels)]
                'option_parse_fields: {
                    if 'detect_fields: {
                        match <Try<Block> as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        match <Option<Else> as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    } == Detection::NotDetected
                    {
                        break 'option_parse_fields ParseExit::Complete;
                    }
                    let mut primary_field = None;
                    let primary_field_exit = {
                        let exit = <Try<
                            Block,
                        > as OptionParse>::option_parse(parser, &mut primary_field);
                        exit
                    };
                    let primary_field = primary_field.unwrap();
                    let mut secondary_field_0 = <Option<Else> as Parse>::parse_error();
                    if primary_field_exit == ParseExit::Cut {
                        *output = Some(Self::Block {
                            block: primary_field,
                            else_: secondary_field_0,
                        });
                        break 'option_parse_fields ParseExit::Cut;
                    }
                    match {
                        let exit = <Option<
                            Else,
                        > as Parse>::parse(parser, &mut secondary_field_0);
                        exit
                    } {
                        ParseExit::Complete => {}
                        ParseExit::Cut => {
                            *output = Some(Self::Block {
                                block: primary_field,
                                else_: secondary_field_0,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                    }
                    *output = Some(Self::Block {
                        block: primary_field,
                        else_: secondary_field_0,
                    });
                    ParseExit::Complete
                }
            }
        }
        fn detect(parser: &impl Tokenizer) -> Detection {
            'detect_enum: {
                Detection::EmptyDetected
                    | 'detect_fields: {
                        match <ThenKeyword as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        match <Try<Box<Expr>> as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        match <Option<ThenElse> as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
            }
        }
    }
    impl Parse for IfBody {
        fn parse(parser: &mut impl Tokenizer, output: &mut Self) -> ParseExit {
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <ThenKeyword as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            match <Try<Box<Expr>> as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            match <Option<ThenElse> as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <ThenKeyword as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        let mut secondary_field_0 = <Try<
                            Box<Expr>,
                        > as Parse>::parse_error();
                        let mut secondary_field_1 = <Option<
                            ThenElse,
                        > as Parse>::parse_error();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::Then {
                                keyword: primary_field,
                                expr: secondary_field_0,
                                else_: secondary_field_1,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        match {
                            let exit = <Try<
                                Box<Expr>,
                            > as Parse>::parse(parser, &mut secondary_field_0);
                            exit
                        } {
                            ParseExit::Complete => {}
                            ParseExit::Cut => {
                                *&mut variant_output = Some(Self::Then {
                                    keyword: primary_field,
                                    expr: secondary_field_0,
                                    else_: secondary_field_1,
                                });
                                break 'option_parse_fields ParseExit::Cut;
                            }
                        }
                        match {
                            let exit = <Option<
                                ThenElse,
                            > as Parse>::parse(parser, &mut secondary_field_1);
                            exit
                        } {
                            ParseExit::Complete => {}
                            ParseExit::Cut => {
                                *&mut variant_output = Some(Self::Then {
                                    keyword: primary_field,
                                    expr: secondary_field_0,
                                    else_: secondary_field_1,
                                });
                                break 'option_parse_fields ParseExit::Cut;
                            }
                        }
                        *&mut variant_output = Some(Self::Then {
                            keyword: primary_field,
                            expr: secondary_field_0,
                            else_: secondary_field_1,
                        });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = variant_output;
                    return variant_option_parse_exit;
                }
            }
            {
                #[allow(unused_labels)]
                'parse_fields: {
                    let mut field_0 = <Try<Block> as Parse>::parse_error();
                    let mut field_1 = <Option<Else> as Parse>::parse_error();
                    match {
                        let exit = <Try<Block> as Parse>::parse(parser, &mut field_0);
                        exit
                    } {
                        ParseExit::Complete => {}
                        ParseExit::Cut => {
                            *output = Self::Block {
                                block: field_0,
                                else_: field_1,
                            };
                            break 'parse_fields ParseExit::Cut;
                        }
                    }
                    match {
                        let exit = <Option<Else> as Parse>::parse(parser, &mut field_1);
                        exit
                    } {
                        ParseExit::Complete => {}
                        ParseExit::Cut => {
                            *output = Self::Block {
                                block: field_0,
                                else_: field_1,
                            };
                            break 'parse_fields ParseExit::Cut;
                        }
                    }
                    *output = Self::Block {
                        block: field_0,
                        else_: field_1,
                    };
                    ParseExit::Complete
                }
            }
        }
        fn parse_error() -> Self {
            Self::Block {
                block: <Try<Block> as Parse>::parse_error(),
                else_: <Option<Else> as Parse>::parse_error(),
            }
        }
    }
    #[desc = "`else`"]
    pub struct Else {
        pub keyword: ElseKeyword,
        pub body: ElseBody,
    }
    #[automatically_derived]
    impl ::core::fmt::Debug for Else {
        #[inline]
        fn fmt(&self, f: &mut ::core::fmt::Formatter) -> ::core::fmt::Result {
            ::core::fmt::Formatter::debug_struct_field2_finish(
                f,
                "Else",
                "keyword",
                &self.keyword,
                "body",
                &&self.body,
            )
        }
    }
    impl OptionParse for Else {
        fn option_parse(
            parser: &mut impl Tokenizer,
            output: &mut Option<Self>,
        ) -> ParseExit {
            {
                #[allow(unused_labels)]
                'option_parse_fields: {
                    if 'detect_fields: {
                        match <ElseKeyword as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        match <ElseBody as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    } == Detection::NotDetected
                    {
                        break 'option_parse_fields ParseExit::Complete;
                    }
                    let mut primary_field = None;
                    let primary_field_exit = {
                        let exit = <ElseKeyword as OptionParse>::option_parse(
                            parser,
                            &mut primary_field,
                        );
                        exit
                    };
                    let primary_field = primary_field.unwrap();
                    let mut secondary_field_0 = <ElseBody as Parse>::parse_error();
                    if primary_field_exit == ParseExit::Cut {
                        *output = Some(Self {
                            keyword: primary_field,
                            body: secondary_field_0,
                        });
                        break 'option_parse_fields ParseExit::Cut;
                    }
                    match {
                        let exit = <ElseBody as Parse>::parse(
                            parser,
                            &mut secondary_field_0,
                        );
                        exit
                    } {
                        ParseExit::Complete => {}
                        ParseExit::Cut => {
                            *output = Some(Self {
                                keyword: primary_field,
                                body: secondary_field_0,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                    }
                    *output = Some(Self {
                        keyword: primary_field,
                        body: secondary_field_0,
                    });
                    ParseExit::Complete
                }
            }
        }
        fn detect(parser: &impl Tokenizer) -> Detection {
            'detect_fields: {
                match <ElseKeyword as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                match <ElseBody as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                Detection::NotDetected
            }
        }
    }
    impl ParseDesc for Else {
        fn desc() -> &'static str {
            "`else`"
        }
    }
    pub enum ElseBody {
        ElseIf { keyword: IfKeyword, condition: Try<Box<BraceExpr>>, body: Box<IfBody> },
        #[fallback]
        Else(Try<Block>),
    }
    #[automatically_derived]
    impl ::core::fmt::Debug for ElseBody {
        #[inline]
        fn fmt(&self, f: &mut ::core::fmt::Formatter) -> ::core::fmt::Result {
            match self {
                ElseBody::ElseIf {
                    keyword: __self_0,
                    condition: __self_1,
                    body: __self_2,
                } => {
                    ::core::fmt::Formatter::debug_struct_field3_finish(
                        f,
                        "ElseIf",
                        "keyword",
                        __self_0,
                        "condition",
                        __self_1,
                        "body",
                        &__self_2,
                    )
                }
                ElseBody::Else(__self_0) => {
                    ::core::fmt::Formatter::debug_tuple_field1_finish(
                        f,
                        "Else",
                        &__self_0,
                    )
                }
            }
        }
    }
    impl OptionParse for ElseBody {
        fn option_parse(
            parser: &mut impl Tokenizer,
            output: &mut Option<Self>,
        ) -> ParseExit {
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <IfKeyword as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            match <Try<Box<BraceExpr>> as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            match <Box<IfBody> as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <IfKeyword as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        let mut secondary_field_0 = <Try<
                            Box<BraceExpr>,
                        > as Parse>::parse_error();
                        let mut secondary_field_1 = <Box<
                            IfBody,
                        > as Parse>::parse_error();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::ElseIf {
                                keyword: primary_field,
                                condition: secondary_field_0,
                                body: secondary_field_1,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        match {
                            let exit = <Try<
                                Box<BraceExpr>,
                            > as Parse>::parse(parser, &mut secondary_field_0);
                            exit
                        } {
                            ParseExit::Complete => {}
                            ParseExit::Cut => {
                                *&mut variant_output = Some(Self::ElseIf {
                                    keyword: primary_field,
                                    condition: secondary_field_0,
                                    body: secondary_field_1,
                                });
                                break 'option_parse_fields ParseExit::Cut;
                            }
                        }
                        match {
                            let exit = <Box<
                                IfBody,
                            > as Parse>::parse(parser, &mut secondary_field_1);
                            exit
                        } {
                            ParseExit::Complete => {}
                            ParseExit::Cut => {
                                *&mut variant_output = Some(Self::ElseIf {
                                    keyword: primary_field,
                                    condition: secondary_field_0,
                                    body: secondary_field_1,
                                });
                                break 'option_parse_fields ParseExit::Cut;
                            }
                        }
                        *&mut variant_output = Some(Self::ElseIf {
                            keyword: primary_field,
                            condition: secondary_field_0,
                            body: secondary_field_1,
                        });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            {
                #[allow(unused_labels)]
                'option_parse_fields: {
                    if 'detect_fields: {
                        match <Try<Block> as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    } == Detection::NotDetected
                    {
                        break 'option_parse_fields ParseExit::Complete;
                    }
                    let mut primary_field = None;
                    let primary_field_exit = {
                        let exit = <Try<
                            Block,
                        > as OptionParse>::option_parse(parser, &mut primary_field);
                        exit
                    };
                    let primary_field = primary_field.unwrap();
                    if primary_field_exit == ParseExit::Cut {
                        *output = Some(Self::Else { 0: primary_field });
                        break 'option_parse_fields ParseExit::Cut;
                    }
                    *output = Some(Self::Else { 0: primary_field });
                    ParseExit::Complete
                }
            }
        }
        fn detect(parser: &impl Tokenizer) -> Detection {
            'detect_enum: {
                Detection::EmptyDetected
                    | 'detect_fields: {
                        match <IfKeyword as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        match <Try<Box<BraceExpr>> as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        match <Box<IfBody> as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
            }
        }
    }
    impl Parse for ElseBody {
        fn parse(parser: &mut impl Tokenizer, output: &mut Self) -> ParseExit {
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <IfKeyword as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            match <Try<Box<BraceExpr>> as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            match <Box<IfBody> as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <IfKeyword as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        let mut secondary_field_0 = <Try<
                            Box<BraceExpr>,
                        > as Parse>::parse_error();
                        let mut secondary_field_1 = <Box<
                            IfBody,
                        > as Parse>::parse_error();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::ElseIf {
                                keyword: primary_field,
                                condition: secondary_field_0,
                                body: secondary_field_1,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        match {
                            let exit = <Try<
                                Box<BraceExpr>,
                            > as Parse>::parse(parser, &mut secondary_field_0);
                            exit
                        } {
                            ParseExit::Complete => {}
                            ParseExit::Cut => {
                                *&mut variant_output = Some(Self::ElseIf {
                                    keyword: primary_field,
                                    condition: secondary_field_0,
                                    body: secondary_field_1,
                                });
                                break 'option_parse_fields ParseExit::Cut;
                            }
                        }
                        match {
                            let exit = <Box<
                                IfBody,
                            > as Parse>::parse(parser, &mut secondary_field_1);
                            exit
                        } {
                            ParseExit::Complete => {}
                            ParseExit::Cut => {
                                *&mut variant_output = Some(Self::ElseIf {
                                    keyword: primary_field,
                                    condition: secondary_field_0,
                                    body: secondary_field_1,
                                });
                                break 'option_parse_fields ParseExit::Cut;
                            }
                        }
                        *&mut variant_output = Some(Self::ElseIf {
                            keyword: primary_field,
                            condition: secondary_field_0,
                            body: secondary_field_1,
                        });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = variant_output;
                    return variant_option_parse_exit;
                }
            }
            {
                #[allow(unused_labels)]
                'parse_fields: {
                    let mut field_0 = <Try<Block> as Parse>::parse_error();
                    match {
                        let exit = <Try<Block> as Parse>::parse(parser, &mut field_0);
                        exit
                    } {
                        ParseExit::Complete => {}
                        ParseExit::Cut => {
                            *output = Self::Else { 0: field_0 };
                            break 'parse_fields ParseExit::Cut;
                        }
                    }
                    *output = Self::Else { 0: field_0 };
                    ParseExit::Complete
                }
            }
        }
        fn parse_error() -> Self {
            Self::Else {
                0: <Try<Block> as Parse>::parse_error(),
            }
        }
    }
    #[desc = "an if statement"]
    pub struct ThenElse {
        pub keyword: ElseKeyword,
        pub expr: Try<Box<Expr>>,
    }
    #[automatically_derived]
    impl ::core::fmt::Debug for ThenElse {
        #[inline]
        fn fmt(&self, f: &mut ::core::fmt::Formatter) -> ::core::fmt::Result {
            ::core::fmt::Formatter::debug_struct_field2_finish(
                f,
                "ThenElse",
                "keyword",
                &self.keyword,
                "expr",
                &&self.expr,
            )
        }
    }
    impl OptionParse for ThenElse {
        fn option_parse(
            parser: &mut impl Tokenizer,
            output: &mut Option<Self>,
        ) -> ParseExit {
            {
                #[allow(unused_labels)]
                'option_parse_fields: {
                    if 'detect_fields: {
                        match <ElseKeyword as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        match <Try<Box<Expr>> as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    } == Detection::NotDetected
                    {
                        break 'option_parse_fields ParseExit::Complete;
                    }
                    let mut primary_field = None;
                    let primary_field_exit = {
                        let exit = <ElseKeyword as OptionParse>::option_parse(
                            parser,
                            &mut primary_field,
                        );
                        exit
                    };
                    let primary_field = primary_field.unwrap();
                    let mut secondary_field_0 = <Try<Box<Expr>> as Parse>::parse_error();
                    if primary_field_exit == ParseExit::Cut {
                        *output = Some(Self {
                            keyword: primary_field,
                            expr: secondary_field_0,
                        });
                        break 'option_parse_fields ParseExit::Cut;
                    }
                    match {
                        let exit = <Try<
                            Box<Expr>,
                        > as Parse>::parse(parser, &mut secondary_field_0);
                        exit
                    } {
                        ParseExit::Complete => {}
                        ParseExit::Cut => {
                            *output = Some(Self {
                                keyword: primary_field,
                                expr: secondary_field_0,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                    }
                    *output = Some(Self {
                        keyword: primary_field,
                        expr: secondary_field_0,
                    });
                    ParseExit::Complete
                }
            }
        }
        fn detect(parser: &impl Tokenizer) -> Detection {
            'detect_fields: {
                match <ElseKeyword as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                match <Try<Box<Expr>> as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                Detection::NotDetected
            }
        }
    }
    impl ParseDesc for ThenElse {
        fn desc() -> &'static str {
            "an if statement"
        }
    }
    #[desc = "a loop"]
    pub struct Loop {
        pub keyword: LoopKeyword,
        pub block: Try<Block>,
    }
    #[automatically_derived]
    impl ::core::fmt::Debug for Loop {
        #[inline]
        fn fmt(&self, f: &mut ::core::fmt::Formatter) -> ::core::fmt::Result {
            ::core::fmt::Formatter::debug_struct_field2_finish(
                f,
                "Loop",
                "keyword",
                &self.keyword,
                "block",
                &&self.block,
            )
        }
    }
    impl OptionParse for Loop {
        fn option_parse(
            parser: &mut impl Tokenizer,
            output: &mut Option<Self>,
        ) -> ParseExit {
            {
                #[allow(unused_labels)]
                'option_parse_fields: {
                    if 'detect_fields: {
                        match <LoopKeyword as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        match <Try<Block> as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    } == Detection::NotDetected
                    {
                        break 'option_parse_fields ParseExit::Complete;
                    }
                    let mut primary_field = None;
                    let primary_field_exit = {
                        let exit = <LoopKeyword as OptionParse>::option_parse(
                            parser,
                            &mut primary_field,
                        );
                        exit
                    };
                    let primary_field = primary_field.unwrap();
                    let mut secondary_field_0 = <Try<Block> as Parse>::parse_error();
                    if primary_field_exit == ParseExit::Cut {
                        *output = Some(Self {
                            keyword: primary_field,
                            block: secondary_field_0,
                        });
                        break 'option_parse_fields ParseExit::Cut;
                    }
                    match {
                        let exit = <Try<
                            Block,
                        > as Parse>::parse(parser, &mut secondary_field_0);
                        exit
                    } {
                        ParseExit::Complete => {}
                        ParseExit::Cut => {
                            *output = Some(Self {
                                keyword: primary_field,
                                block: secondary_field_0,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                    }
                    *output = Some(Self {
                        keyword: primary_field,
                        block: secondary_field_0,
                    });
                    ParseExit::Complete
                }
            }
        }
        fn detect(parser: &impl Tokenizer) -> Detection {
            'detect_fields: {
                match <LoopKeyword as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                match <Try<Block> as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                Detection::NotDetected
            }
        }
    }
    impl ParseDesc for Loop {
        fn desc() -> &'static str {
            "a loop"
        }
    }
    #[desc = "a while loop"]
    pub struct While {
        pub keyword: WhileKeyword,
        pub condition: Try<Box<BraceExpr>>,
        pub block: Try<Block>,
    }
    #[automatically_derived]
    impl ::core::fmt::Debug for While {
        #[inline]
        fn fmt(&self, f: &mut ::core::fmt::Formatter) -> ::core::fmt::Result {
            ::core::fmt::Formatter::debug_struct_field3_finish(
                f,
                "While",
                "keyword",
                &self.keyword,
                "condition",
                &self.condition,
                "block",
                &&self.block,
            )
        }
    }
    impl OptionParse for While {
        fn option_parse(
            parser: &mut impl Tokenizer,
            output: &mut Option<Self>,
        ) -> ParseExit {
            {
                #[allow(unused_labels)]
                'option_parse_fields: {
                    if 'detect_fields: {
                        match <WhileKeyword as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        match <Try<Box<BraceExpr>> as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        match <Try<Block> as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    } == Detection::NotDetected
                    {
                        break 'option_parse_fields ParseExit::Complete;
                    }
                    let mut primary_field = None;
                    let primary_field_exit = {
                        let exit = <WhileKeyword as OptionParse>::option_parse(
                            parser,
                            &mut primary_field,
                        );
                        exit
                    };
                    let primary_field = primary_field.unwrap();
                    let mut secondary_field_0 = <Try<
                        Box<BraceExpr>,
                    > as Parse>::parse_error();
                    let mut secondary_field_1 = <Try<Block> as Parse>::parse_error();
                    if primary_field_exit == ParseExit::Cut {
                        *output = Some(Self {
                            keyword: primary_field,
                            condition: secondary_field_0,
                            block: secondary_field_1,
                        });
                        break 'option_parse_fields ParseExit::Cut;
                    }
                    match {
                        let exit = <Try<
                            Box<BraceExpr>,
                        > as Parse>::parse(parser, &mut secondary_field_0);
                        exit
                    } {
                        ParseExit::Complete => {}
                        ParseExit::Cut => {
                            *output = Some(Self {
                                keyword: primary_field,
                                condition: secondary_field_0,
                                block: secondary_field_1,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                    }
                    match {
                        let exit = <Try<
                            Block,
                        > as Parse>::parse(parser, &mut secondary_field_1);
                        exit
                    } {
                        ParseExit::Complete => {}
                        ParseExit::Cut => {
                            *output = Some(Self {
                                keyword: primary_field,
                                condition: secondary_field_0,
                                block: secondary_field_1,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                    }
                    *output = Some(Self {
                        keyword: primary_field,
                        condition: secondary_field_0,
                        block: secondary_field_1,
                    });
                    ParseExit::Complete
                }
            }
        }
        fn detect(parser: &impl Tokenizer) -> Detection {
            'detect_fields: {
                match <WhileKeyword as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                match <Try<Box<BraceExpr>> as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                match <Try<Block> as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                Detection::NotDetected
            }
        }
    }
    impl ParseDesc for While {
        fn desc() -> &'static str {
            "a while loop"
        }
    }
    #[desc = "an until loop"]
    pub struct Until {
        pub keyword: UntilKeyword,
        pub condition: Try<Box<BraceExpr>>,
        pub block: Try<Block>,
    }
    #[automatically_derived]
    impl ::core::fmt::Debug for Until {
        #[inline]
        fn fmt(&self, f: &mut ::core::fmt::Formatter) -> ::core::fmt::Result {
            ::core::fmt::Formatter::debug_struct_field3_finish(
                f,
                "Until",
                "keyword",
                &self.keyword,
                "condition",
                &self.condition,
                "block",
                &&self.block,
            )
        }
    }
    impl OptionParse for Until {
        fn option_parse(
            parser: &mut impl Tokenizer,
            output: &mut Option<Self>,
        ) -> ParseExit {
            {
                #[allow(unused_labels)]
                'option_parse_fields: {
                    if 'detect_fields: {
                        match <UntilKeyword as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        match <Try<Box<BraceExpr>> as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        match <Try<Block> as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    } == Detection::NotDetected
                    {
                        break 'option_parse_fields ParseExit::Complete;
                    }
                    let mut primary_field = None;
                    let primary_field_exit = {
                        let exit = <UntilKeyword as OptionParse>::option_parse(
                            parser,
                            &mut primary_field,
                        );
                        exit
                    };
                    let primary_field = primary_field.unwrap();
                    let mut secondary_field_0 = <Try<
                        Box<BraceExpr>,
                    > as Parse>::parse_error();
                    let mut secondary_field_1 = <Try<Block> as Parse>::parse_error();
                    if primary_field_exit == ParseExit::Cut {
                        *output = Some(Self {
                            keyword: primary_field,
                            condition: secondary_field_0,
                            block: secondary_field_1,
                        });
                        break 'option_parse_fields ParseExit::Cut;
                    }
                    match {
                        let exit = <Try<
                            Box<BraceExpr>,
                        > as Parse>::parse(parser, &mut secondary_field_0);
                        exit
                    } {
                        ParseExit::Complete => {}
                        ParseExit::Cut => {
                            *output = Some(Self {
                                keyword: primary_field,
                                condition: secondary_field_0,
                                block: secondary_field_1,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                    }
                    match {
                        let exit = <Try<
                            Block,
                        > as Parse>::parse(parser, &mut secondary_field_1);
                        exit
                    } {
                        ParseExit::Complete => {}
                        ParseExit::Cut => {
                            *output = Some(Self {
                                keyword: primary_field,
                                condition: secondary_field_0,
                                block: secondary_field_1,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                    }
                    *output = Some(Self {
                        keyword: primary_field,
                        condition: secondary_field_0,
                        block: secondary_field_1,
                    });
                    ParseExit::Complete
                }
            }
        }
        fn detect(parser: &impl Tokenizer) -> Detection {
            'detect_fields: {
                match <UntilKeyword as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                match <Try<Box<BraceExpr>> as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                match <Try<Block> as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                Detection::NotDetected
            }
        }
    }
    impl ParseDesc for Until {
        fn desc() -> &'static str {
            "an until loop"
        }
    }
    #[desc = "a for loop"]
    pub struct For {
        pub keyword: ForKeyword,
        #[highlight(HighlightColor::Cyan)]
        pub item: Try<Box<Param>>,
        pub in_: Try<InKeyword>,
        pub iter: Try<Box<BraceExpr>>,
        pub block: Try<Block>,
    }
    #[automatically_derived]
    impl ::core::fmt::Debug for For {
        #[inline]
        fn fmt(&self, f: &mut ::core::fmt::Formatter) -> ::core::fmt::Result {
            ::core::fmt::Formatter::debug_struct_field5_finish(
                f,
                "For",
                "keyword",
                &self.keyword,
                "item",
                &self.item,
                "in_",
                &self.in_,
                "iter",
                &self.iter,
                "block",
                &&self.block,
            )
        }
    }
    impl OptionParse for For {
        fn option_parse(
            parser: &mut impl Tokenizer,
            output: &mut Option<Self>,
        ) -> ParseExit {
            {
                #[allow(unused_labels)]
                'option_parse_fields: {
                    if 'detect_fields: {
                        match <ForKeyword as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        match <Try<Box<Param>> as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        match <Try<InKeyword> as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        match <Try<Box<BraceExpr>> as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        match <Try<Block> as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    } == Detection::NotDetected
                    {
                        break 'option_parse_fields ParseExit::Complete;
                    }
                    let mut primary_field = None;
                    let primary_field_exit = {
                        let exit = <ForKeyword as OptionParse>::option_parse(
                            parser,
                            &mut primary_field,
                        );
                        exit
                    };
                    let primary_field = primary_field.unwrap();
                    let mut secondary_field_0 = <Try<
                        Box<Param>,
                    > as Parse>::parse_error();
                    let mut secondary_field_1 = <Try<InKeyword> as Parse>::parse_error();
                    let mut secondary_field_2 = <Try<
                        Box<BraceExpr>,
                    > as Parse>::parse_error();
                    let mut secondary_field_3 = <Try<Block> as Parse>::parse_error();
                    if primary_field_exit == ParseExit::Cut {
                        *output = Some(Self {
                            keyword: primary_field,
                            item: secondary_field_0,
                            in_: secondary_field_1,
                            iter: secondary_field_2,
                            block: secondary_field_3,
                        });
                        break 'option_parse_fields ParseExit::Cut;
                    }
                    match {
                        let exit = <Try<
                            Box<Param>,
                        > as Parse>::parse(parser, &mut secondary_field_0);
                        <Try<
                            Box<Param>,
                        > as Highlightable>::highlight(
                            &mut secondary_field_0,
                            HighlightColor::Cyan,
                            &mut parser.highlights(),
                        );
                        exit
                    } {
                        ParseExit::Complete => {}
                        ParseExit::Cut => {
                            *output = Some(Self {
                                keyword: primary_field,
                                item: secondary_field_0,
                                in_: secondary_field_1,
                                iter: secondary_field_2,
                                block: secondary_field_3,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                    }
                    match {
                        let exit = <Try<
                            InKeyword,
                        > as Parse>::parse(parser, &mut secondary_field_1);
                        exit
                    } {
                        ParseExit::Complete => {}
                        ParseExit::Cut => {
                            *output = Some(Self {
                                keyword: primary_field,
                                item: secondary_field_0,
                                in_: secondary_field_1,
                                iter: secondary_field_2,
                                block: secondary_field_3,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                    }
                    match {
                        let exit = <Try<
                            Box<BraceExpr>,
                        > as Parse>::parse(parser, &mut secondary_field_2);
                        exit
                    } {
                        ParseExit::Complete => {}
                        ParseExit::Cut => {
                            *output = Some(Self {
                                keyword: primary_field,
                                item: secondary_field_0,
                                in_: secondary_field_1,
                                iter: secondary_field_2,
                                block: secondary_field_3,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                    }
                    match {
                        let exit = <Try<
                            Block,
                        > as Parse>::parse(parser, &mut secondary_field_3);
                        exit
                    } {
                        ParseExit::Complete => {}
                        ParseExit::Cut => {
                            *output = Some(Self {
                                keyword: primary_field,
                                item: secondary_field_0,
                                in_: secondary_field_1,
                                iter: secondary_field_2,
                                block: secondary_field_3,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                    }
                    *output = Some(Self {
                        keyword: primary_field,
                        item: secondary_field_0,
                        in_: secondary_field_1,
                        iter: secondary_field_2,
                        block: secondary_field_3,
                    });
                    ParseExit::Complete
                }
            }
        }
        fn detect(parser: &impl Tokenizer) -> Detection {
            'detect_fields: {
                match <ForKeyword as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                match <Try<Box<Param>> as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                match <Try<InKeyword> as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                match <Try<Box<BraceExpr>> as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                match <Try<Block> as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                Detection::NotDetected
            }
        }
    }
    impl ParseDesc for For {
        fn desc() -> &'static str {
            "a for loop"
        }
    }
    #[desc = "`'`"]
    pub struct Lifetime {
        pub punct: ApostrophePunct,
        pub ident: Try<Ident>,
    }
    #[automatically_derived]
    impl ::core::fmt::Debug for Lifetime {
        #[inline]
        fn fmt(&self, f: &mut ::core::fmt::Formatter) -> ::core::fmt::Result {
            ::core::fmt::Formatter::debug_struct_field2_finish(
                f,
                "Lifetime",
                "punct",
                &self.punct,
                "ident",
                &&self.ident,
            )
        }
    }
    impl OptionParse for Lifetime {
        fn option_parse(
            parser: &mut impl Tokenizer,
            output: &mut Option<Self>,
        ) -> ParseExit {
            {
                #[allow(unused_labels)]
                'option_parse_fields: {
                    if 'detect_fields: {
                        match <ApostrophePunct as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        match <Try<Ident> as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    } == Detection::NotDetected
                    {
                        break 'option_parse_fields ParseExit::Complete;
                    }
                    let mut primary_field = None;
                    let primary_field_exit = {
                        let exit = <ApostrophePunct as OptionParse>::option_parse(
                            parser,
                            &mut primary_field,
                        );
                        exit
                    };
                    let primary_field = primary_field.unwrap();
                    let mut secondary_field_0 = <Try<Ident> as Parse>::parse_error();
                    if primary_field_exit == ParseExit::Cut {
                        *output = Some(Self {
                            punct: primary_field,
                            ident: secondary_field_0,
                        });
                        break 'option_parse_fields ParseExit::Cut;
                    }
                    match {
                        let exit = <Try<
                            Ident,
                        > as Parse>::parse(parser, &mut secondary_field_0);
                        exit
                    } {
                        ParseExit::Complete => {}
                        ParseExit::Cut => {
                            *output = Some(Self {
                                punct: primary_field,
                                ident: secondary_field_0,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                    }
                    *output = Some(Self {
                        punct: primary_field,
                        ident: secondary_field_0,
                    });
                    ParseExit::Complete
                }
            }
        }
        fn detect(parser: &impl Tokenizer) -> Detection {
            'detect_fields: {
                match <ApostrophePunct as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                match <Try<Ident> as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                Detection::NotDetected
            }
        }
    }
    impl ParseDesc for Lifetime {
        fn desc() -> &'static str {
            "`'`"
        }
    }
    #[desc = "`= ...`"]
    pub struct Set {
        pub eq: EqPunct,
        pub value: Try<Expr>,
    }
    #[automatically_derived]
    impl ::core::fmt::Debug for Set {
        #[inline]
        fn fmt(&self, f: &mut ::core::fmt::Formatter) -> ::core::fmt::Result {
            ::core::fmt::Formatter::debug_struct_field2_finish(
                f,
                "Set",
                "eq",
                &self.eq,
                "value",
                &&self.value,
            )
        }
    }
    impl OptionParse for Set {
        fn option_parse(
            parser: &mut impl Tokenizer,
            output: &mut Option<Self>,
        ) -> ParseExit {
            {
                #[allow(unused_labels)]
                'option_parse_fields: {
                    if 'detect_fields: {
                        match <EqPunct as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        match <Try<Expr> as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    } == Detection::NotDetected
                    {
                        break 'option_parse_fields ParseExit::Complete;
                    }
                    let mut primary_field = None;
                    let primary_field_exit = {
                        let exit = <EqPunct as OptionParse>::option_parse(
                            parser,
                            &mut primary_field,
                        );
                        exit
                    };
                    let primary_field = primary_field.unwrap();
                    let mut secondary_field_0 = <Try<Expr> as Parse>::parse_error();
                    if primary_field_exit == ParseExit::Cut {
                        *output = Some(Self {
                            eq: primary_field,
                            value: secondary_field_0,
                        });
                        break 'option_parse_fields ParseExit::Cut;
                    }
                    match {
                        let exit = <Try<
                            Expr,
                        > as Parse>::parse(parser, &mut secondary_field_0);
                        exit
                    } {
                        ParseExit::Complete => {}
                        ParseExit::Cut => {
                            *output = Some(Self {
                                eq: primary_field,
                                value: secondary_field_0,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                    }
                    *output = Some(Self {
                        eq: primary_field,
                        value: secondary_field_0,
                    });
                    ParseExit::Complete
                }
            }
        }
        fn detect(parser: &impl Tokenizer) -> Detection {
            'detect_fields: {
                match <EqPunct as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                match <Try<Expr> as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                Detection::NotDetected
            }
        }
    }
    impl ParseDesc for Set {
        fn desc() -> &'static str {
            "`= ...`"
        }
    }
}
mod generics {
    use super::*;
    #[desc = "`< >`"]
    #[framed]
    pub struct GenericArgs {
        pub frame: Frame<Angles>,
        #[parse_as(Trailing<_, punct!(",")>)]
        pub args: Vec<Expr>,
    }
    #[automatically_derived]
    impl ::core::fmt::Debug for GenericArgs {
        #[inline]
        fn fmt(&self, f: &mut ::core::fmt::Formatter) -> ::core::fmt::Result {
            ::core::fmt::Formatter::debug_struct_field2_finish(
                f,
                "GenericArgs",
                "frame",
                &self.frame,
                "args",
                &&self.args,
            )
        }
    }
    impl OptionParse for GenericArgs {
        fn option_parse(
            parser: &mut impl Tokenizer,
            output: &mut Option<Self>,
        ) -> ParseExit {
            {
                let mut frame_output = None;
                let parse_exit = <Frame<
                    Angles,
                >>::option_parse_frame(
                    parser,
                    &mut frame_output,
                    |parser| {
                        #[allow(unused_parens)]
                        let (mut field_1) = (<Trailing<
                            _,
                            CommaPunct,
                        > as Into<
                            Vec<Expr>,
                        >>::into(<Trailing<_, CommaPunct> as Parse>::parse_error()));
                        #[allow(unused_labels)]
                        let parse_exit = 'parse_fields: {
                            match {
                                let exit = {
                                    let mut temp_output = <Trailing<
                                        _,
                                        CommaPunct,
                                    > as Parse>::parse_error();
                                    let exit = <Trailing<
                                        _,
                                        CommaPunct,
                                    > as Parse>::parse(parser, &mut temp_output);
                                    *&mut field_1 = <Trailing<
                                        _,
                                        CommaPunct,
                                    > as Into<Vec<Expr>>>::into(temp_output);
                                    exit
                                };
                                exit
                            } {
                                ParseExit::Complete => {}
                                ParseExit::Cut => {
                                    break 'parse_fields ParseExit::Cut;
                                }
                            }
                            ParseExit::Complete
                        };
                        ((field_1), parse_exit)
                    },
                    |parser| {
                        #[allow(unused_parens)]
                        let (mut field_1) = (<Trailing<
                            _,
                            CommaPunct,
                        > as Into<
                            Vec<Expr>,
                        >>::into(<Trailing<_, CommaPunct> as Parse>::parse_error()));
                        #[allow(unused_labels)]
                        let parse_exit = 'parse_fields: {
                            match {
                                let exit = {
                                    let mut temp_output = <Trailing<
                                        _,
                                        CommaPunct,
                                    > as Parse>::parse_error();
                                    let exit = <Trailing<
                                        _,
                                        CommaPunct,
                                    > as Parse>::parse(parser, &mut temp_output);
                                    *&mut field_1 = <Trailing<
                                        _,
                                        CommaPunct,
                                    > as Into<Vec<Expr>>>::into(temp_output);
                                    exit
                                };
                                exit
                            } {
                                ParseExit::Complete => {}
                                ParseExit::Cut => {
                                    break 'parse_fields ParseExit::Cut;
                                }
                            }
                            ParseExit::Complete
                        };
                        ((field_1), parse_exit)
                    },
                );
                #[allow(unused_parens)]
                if let Some((frame, (field_1))) = frame_output {
                    *output = Some(Self {
                        frame: frame,
                        args: field_1,
                    });
                }
                parse_exit
            }
        }
        fn detect(parser: &impl Tokenizer) -> Detection {
            <Frame<Angles>>::detect_frame(parser)
        }
    }
    impl ParseDesc for GenericArgs {
        fn desc() -> &'static str {
            "`< >`"
        }
    }
    #[desc = "generic parameters"]
    #[framed]
    pub struct GenericParams {
        pub frame: Frame<Angles>,
        #[highlight(HighlightColor::Green)]
        #[parse_as(Trailing<_, punct!(",")>)]
        pub params: Vec<Param>,
    }
    #[automatically_derived]
    impl ::core::fmt::Debug for GenericParams {
        #[inline]
        fn fmt(&self, f: &mut ::core::fmt::Formatter) -> ::core::fmt::Result {
            ::core::fmt::Formatter::debug_struct_field2_finish(
                f,
                "GenericParams",
                "frame",
                &self.frame,
                "params",
                &&self.params,
            )
        }
    }
    impl OptionParse for GenericParams {
        fn option_parse(
            parser: &mut impl Tokenizer,
            output: &mut Option<Self>,
        ) -> ParseExit {
            {
                let mut frame_output = None;
                let parse_exit = <Frame<
                    Angles,
                >>::option_parse_frame(
                    parser,
                    &mut frame_output,
                    |parser| {
                        #[allow(unused_parens)]
                        let (mut field_1) = (<Trailing<
                            _,
                            CommaPunct,
                        > as Into<
                            Vec<Param>,
                        >>::into(<Trailing<_, CommaPunct> as Parse>::parse_error()));
                        #[allow(unused_labels)]
                        let parse_exit = 'parse_fields: {
                            match {
                                let exit = {
                                    let mut temp_output = <Trailing<
                                        _,
                                        CommaPunct,
                                    > as Parse>::parse_error();
                                    let exit = <Trailing<
                                        _,
                                        CommaPunct,
                                    > as Parse>::parse(parser, &mut temp_output);
                                    *&mut field_1 = <Trailing<
                                        _,
                                        CommaPunct,
                                    > as Into<Vec<Param>>>::into(temp_output);
                                    exit
                                };
                                <Vec<
                                    Param,
                                > as Highlightable>::highlight(
                                    &mut field_1,
                                    HighlightColor::Green,
                                    &mut parser.highlights(),
                                );
                                exit
                            } {
                                ParseExit::Complete => {}
                                ParseExit::Cut => {
                                    break 'parse_fields ParseExit::Cut;
                                }
                            }
                            ParseExit::Complete
                        };
                        ((field_1), parse_exit)
                    },
                    |parser| {
                        #[allow(unused_parens)]
                        let (mut field_1) = (<Trailing<
                            _,
                            CommaPunct,
                        > as Into<
                            Vec<Param>,
                        >>::into(<Trailing<_, CommaPunct> as Parse>::parse_error()));
                        #[allow(unused_labels)]
                        let parse_exit = 'parse_fields: {
                            match {
                                let exit = {
                                    let mut temp_output = <Trailing<
                                        _,
                                        CommaPunct,
                                    > as Parse>::parse_error();
                                    let exit = <Trailing<
                                        _,
                                        CommaPunct,
                                    > as Parse>::parse(parser, &mut temp_output);
                                    *&mut field_1 = <Trailing<
                                        _,
                                        CommaPunct,
                                    > as Into<Vec<Param>>>::into(temp_output);
                                    exit
                                };
                                <Vec<
                                    Param,
                                > as Highlightable>::highlight(
                                    &mut field_1,
                                    HighlightColor::Green,
                                    &mut parser.highlights(),
                                );
                                exit
                            } {
                                ParseExit::Complete => {}
                                ParseExit::Cut => {
                                    break 'parse_fields ParseExit::Cut;
                                }
                            }
                            ParseExit::Complete
                        };
                        ((field_1), parse_exit)
                    },
                );
                #[allow(unused_parens)]
                if let Some((frame, (field_1))) = frame_output {
                    *output = Some(Self {
                        frame: frame,
                        params: field_1,
                    });
                }
                parse_exit
            }
        }
        fn detect(parser: &impl Tokenizer) -> Detection {
            <Frame<Angles>>::detect_frame(parser)
        }
    }
    impl ParseDesc for GenericParams {
        fn desc() -> &'static str {
            "generic parameters"
        }
    }
}
mod item {
    use super::*;
    #[desc = "an item"]
    pub struct Item {
        #[parse_as(Repeated<_>)]
        pub attrs: Vec<Attr>,
        #[parse_as(Repeated<_>)]
        pub modifiers: Vec<ItemModifier>,
        pub core: Try<ItemCore>,
    }
    #[automatically_derived]
    impl ::core::fmt::Debug for Item {
        #[inline]
        fn fmt(&self, f: &mut ::core::fmt::Formatter) -> ::core::fmt::Result {
            ::core::fmt::Formatter::debug_struct_field3_finish(
                f,
                "Item",
                "attrs",
                &self.attrs,
                "modifiers",
                &self.modifiers,
                "core",
                &&self.core,
            )
        }
    }
    impl OptionParse for Item {
        fn option_parse(
            parser: &mut impl Tokenizer,
            output: &mut Option<Self>,
        ) -> ParseExit {
            {
                #[allow(unused_labels)]
                'option_parse_fields: {
                    if 'detect_fields: {
                        match <Repeated<_> as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        match <Repeated<_> as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        match <Try<ItemCore> as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    } == Detection::NotDetected
                    {
                        break 'option_parse_fields ParseExit::Complete;
                    }
                    let mut primary_field = None;
                    let primary_field_exit = {
                        let exit = {
                            let mut temp_output = None;
                            let exit = <Repeated<
                                _,
                            > as OptionParse>::option_parse(parser, &mut temp_output);
                            *&mut primary_field = <Repeated<
                                _,
                            > as Into<Vec<Attr>>>::into(temp_output);
                            exit
                        };
                        exit
                    };
                    let primary_field = primary_field.unwrap();
                    let mut secondary_field_0 = <Repeated<
                        _,
                    > as Into<
                        Vec<ItemModifier>,
                    >>::into(<Repeated<_> as Parse>::parse_error());
                    let mut secondary_field_1 = <Try<ItemCore> as Parse>::parse_error();
                    if primary_field_exit == ParseExit::Cut {
                        *output = Some(Self {
                            attrs: primary_field,
                            modifiers: secondary_field_0,
                            core: secondary_field_1,
                        });
                        break 'option_parse_fields ParseExit::Cut;
                    }
                    match {
                        let exit = {
                            let mut temp_output = <Repeated<_> as Parse>::parse_error();
                            let exit = <Repeated<
                                _,
                            > as Parse>::parse(parser, &mut temp_output);
                            *&mut secondary_field_0 = <Repeated<
                                _,
                            > as Into<Vec<ItemModifier>>>::into(temp_output);
                            exit
                        };
                        exit
                    } {
                        ParseExit::Complete => {}
                        ParseExit::Cut => {
                            *output = Some(Self {
                                attrs: primary_field,
                                modifiers: secondary_field_0,
                                core: secondary_field_1,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                    }
                    match {
                        let exit = <Try<
                            ItemCore,
                        > as Parse>::parse(parser, &mut secondary_field_1);
                        exit
                    } {
                        ParseExit::Complete => {}
                        ParseExit::Cut => {
                            *output = Some(Self {
                                attrs: primary_field,
                                modifiers: secondary_field_0,
                                core: secondary_field_1,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                    }
                    *output = Some(Self {
                        attrs: primary_field,
                        modifiers: secondary_field_0,
                        core: secondary_field_1,
                    });
                    ParseExit::Complete
                }
            }
        }
        fn detect(parser: &impl Tokenizer) -> Detection {
            'detect_fields: {
                match <Repeated<_> as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                match <Repeated<_> as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                match <Try<ItemCore> as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                Detection::NotDetected
            }
        }
    }
    impl ParseDesc for Item {
        fn desc() -> &'static str {
            "an item"
        }
    }
    #[desc = "an item modifier"]
    pub enum ItemModifier {
        Pub(PubKeyword),
        Open(OpenKeyword),
        Runtime(RuntimeKeyword),
        Comptime(ComptimeKeyword),
        Raw(RawKeyword),
        Con(ConKeyword),
    }
    #[automatically_derived]
    impl ::core::fmt::Debug for ItemModifier {
        #[inline]
        fn fmt(&self, f: &mut ::core::fmt::Formatter) -> ::core::fmt::Result {
            match self {
                ItemModifier::Pub(__self_0) => {
                    ::core::fmt::Formatter::debug_tuple_field1_finish(
                        f,
                        "Pub",
                        &__self_0,
                    )
                }
                ItemModifier::Open(__self_0) => {
                    ::core::fmt::Formatter::debug_tuple_field1_finish(
                        f,
                        "Open",
                        &__self_0,
                    )
                }
                ItemModifier::Runtime(__self_0) => {
                    ::core::fmt::Formatter::debug_tuple_field1_finish(
                        f,
                        "Runtime",
                        &__self_0,
                    )
                }
                ItemModifier::Comptime(__self_0) => {
                    ::core::fmt::Formatter::debug_tuple_field1_finish(
                        f,
                        "Comptime",
                        &__self_0,
                    )
                }
                ItemModifier::Raw(__self_0) => {
                    ::core::fmt::Formatter::debug_tuple_field1_finish(
                        f,
                        "Raw",
                        &__self_0,
                    )
                }
                ItemModifier::Con(__self_0) => {
                    ::core::fmt::Formatter::debug_tuple_field1_finish(
                        f,
                        "Con",
                        &__self_0,
                    )
                }
            }
        }
    }
    #[automatically_derived]
    impl ::core::clone::Clone for ItemModifier {
        #[inline]
        fn clone(&self) -> ItemModifier {
            match self {
                ItemModifier::Pub(__self_0) => {
                    ItemModifier::Pub(::core::clone::Clone::clone(__self_0))
                }
                ItemModifier::Open(__self_0) => {
                    ItemModifier::Open(::core::clone::Clone::clone(__self_0))
                }
                ItemModifier::Runtime(__self_0) => {
                    ItemModifier::Runtime(::core::clone::Clone::clone(__self_0))
                }
                ItemModifier::Comptime(__self_0) => {
                    ItemModifier::Comptime(::core::clone::Clone::clone(__self_0))
                }
                ItemModifier::Raw(__self_0) => {
                    ItemModifier::Raw(::core::clone::Clone::clone(__self_0))
                }
                ItemModifier::Con(__self_0) => {
                    ItemModifier::Con(::core::clone::Clone::clone(__self_0))
                }
            }
        }
    }
    impl OptionParse for ItemModifier {
        fn option_parse(
            parser: &mut impl Tokenizer,
            output: &mut Option<Self>,
        ) -> ParseExit {
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <PubKeyword as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <PubKeyword as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::Pub { 0: primary_field });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::Pub { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <OpenKeyword as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <OpenKeyword as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::Open { 0: primary_field });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::Open { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <RuntimeKeyword as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <RuntimeKeyword as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::Runtime {
                                0: primary_field,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::Runtime { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <ComptimeKeyword as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <ComptimeKeyword as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::Comptime {
                                0: primary_field,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::Comptime { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <RawKeyword as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <RawKeyword as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::Raw { 0: primary_field });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::Raw { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <ConKeyword as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <ConKeyword as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::Con { 0: primary_field });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::Con { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            ParseExit::Complete
        }
        fn detect(parser: &impl Tokenizer) -> Detection {
            'detect_enum: {
                Detection::NotDetected
                    | 'detect_fields: {
                        match <PubKeyword as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
                    | 'detect_fields: {
                        match <OpenKeyword as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
                    | 'detect_fields: {
                        match <RuntimeKeyword as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
                    | 'detect_fields: {
                        match <ComptimeKeyword as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
                    | 'detect_fields: {
                        match <RawKeyword as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
                    | 'detect_fields: {
                        match <ConKeyword as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
            }
        }
    }
    impl ParseDesc for ItemModifier {
        fn desc() -> &'static str {
            "an item modifier"
        }
    }
    #[desc = "an item"]
    pub enum ItemCore {
        Attr(InnerAttr),
        Mod(Mod),
        Use(Use),
        Fn(Fn),
        Type(Type),
        Struct(Struct),
        Enum(Enum),
        Sys(Sys),
        Static(Static),
        Trait(Trait),
    }
    #[automatically_derived]
    impl ::core::fmt::Debug for ItemCore {
        #[inline]
        fn fmt(&self, f: &mut ::core::fmt::Formatter) -> ::core::fmt::Result {
            match self {
                ItemCore::Attr(__self_0) => {
                    ::core::fmt::Formatter::debug_tuple_field1_finish(
                        f,
                        "Attr",
                        &__self_0,
                    )
                }
                ItemCore::Mod(__self_0) => {
                    ::core::fmt::Formatter::debug_tuple_field1_finish(
                        f,
                        "Mod",
                        &__self_0,
                    )
                }
                ItemCore::Use(__self_0) => {
                    ::core::fmt::Formatter::debug_tuple_field1_finish(
                        f,
                        "Use",
                        &__self_0,
                    )
                }
                ItemCore::Fn(__self_0) => {
                    ::core::fmt::Formatter::debug_tuple_field1_finish(f, "Fn", &__self_0)
                }
                ItemCore::Type(__self_0) => {
                    ::core::fmt::Formatter::debug_tuple_field1_finish(
                        f,
                        "Type",
                        &__self_0,
                    )
                }
                ItemCore::Struct(__self_0) => {
                    ::core::fmt::Formatter::debug_tuple_field1_finish(
                        f,
                        "Struct",
                        &__self_0,
                    )
                }
                ItemCore::Enum(__self_0) => {
                    ::core::fmt::Formatter::debug_tuple_field1_finish(
                        f,
                        "Enum",
                        &__self_0,
                    )
                }
                ItemCore::Sys(__self_0) => {
                    ::core::fmt::Formatter::debug_tuple_field1_finish(
                        f,
                        "Sys",
                        &__self_0,
                    )
                }
                ItemCore::Static(__self_0) => {
                    ::core::fmt::Formatter::debug_tuple_field1_finish(
                        f,
                        "Static",
                        &__self_0,
                    )
                }
                ItemCore::Trait(__self_0) => {
                    ::core::fmt::Formatter::debug_tuple_field1_finish(
                        f,
                        "Trait",
                        &__self_0,
                    )
                }
            }
        }
    }
    impl OptionParse for ItemCore {
        fn option_parse(
            parser: &mut impl Tokenizer,
            output: &mut Option<Self>,
        ) -> ParseExit {
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <InnerAttr as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <InnerAttr as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::Attr { 0: primary_field });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::Attr { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <Mod as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <Mod as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::Mod { 0: primary_field });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::Mod { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <Use as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <Use as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::Use { 0: primary_field });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::Use { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <Fn as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <Fn as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::Fn { 0: primary_field });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::Fn { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <Type as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <Type as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::Type { 0: primary_field });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::Type { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <Struct as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <Struct as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::Struct {
                                0: primary_field,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::Struct { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <Enum as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <Enum as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::Enum { 0: primary_field });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::Enum { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <Sys as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <Sys as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::Sys { 0: primary_field });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::Sys { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <Static as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <Static as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::Static {
                                0: primary_field,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::Static { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <Trait as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <Trait as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::Trait {
                                0: primary_field,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::Trait { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            ParseExit::Complete
        }
        fn detect(parser: &impl Tokenizer) -> Detection {
            'detect_enum: {
                Detection::NotDetected
                    | 'detect_fields: {
                        match <InnerAttr as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
                    | 'detect_fields: {
                        match <Mod as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
                    | 'detect_fields: {
                        match <Use as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
                    | 'detect_fields: {
                        match <Fn as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
                    | 'detect_fields: {
                        match <Type as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
                    | 'detect_fields: {
                        match <Struct as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
                    | 'detect_fields: {
                        match <Enum as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
                    | 'detect_fields: {
                        match <Sys as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
                    | 'detect_fields: {
                        match <Static as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
                    | 'detect_fields: {
                        match <Trait as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
            }
        }
    }
    impl ParseDesc for ItemCore {
        fn desc() -> &'static str {
            "an item"
        }
    }
    #[desc = "a module declaration"]
    pub struct Mod {
        pub keyword: ModKeyword,
        #[highlight(HighlightColor::Green)]
        pub ident: Try<Ident>,
        pub body: Try<ModBody>,
    }
    #[automatically_derived]
    impl ::core::fmt::Debug for Mod {
        #[inline]
        fn fmt(&self, f: &mut ::core::fmt::Formatter) -> ::core::fmt::Result {
            ::core::fmt::Formatter::debug_struct_field3_finish(
                f,
                "Mod",
                "keyword",
                &self.keyword,
                "ident",
                &self.ident,
                "body",
                &&self.body,
            )
        }
    }
    impl OptionParse for Mod {
        fn option_parse(
            parser: &mut impl Tokenizer,
            output: &mut Option<Self>,
        ) -> ParseExit {
            {
                #[allow(unused_labels)]
                'option_parse_fields: {
                    if 'detect_fields: {
                        match <ModKeyword as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        match <Try<Ident> as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        match <Try<ModBody> as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    } == Detection::NotDetected
                    {
                        break 'option_parse_fields ParseExit::Complete;
                    }
                    let mut primary_field = None;
                    let primary_field_exit = {
                        let exit = <ModKeyword as OptionParse>::option_parse(
                            parser,
                            &mut primary_field,
                        );
                        exit
                    };
                    let primary_field = primary_field.unwrap();
                    let mut secondary_field_0 = <Try<Ident> as Parse>::parse_error();
                    let mut secondary_field_1 = <Try<ModBody> as Parse>::parse_error();
                    if primary_field_exit == ParseExit::Cut {
                        *output = Some(Self {
                            keyword: primary_field,
                            ident: secondary_field_0,
                            body: secondary_field_1,
                        });
                        break 'option_parse_fields ParseExit::Cut;
                    }
                    match {
                        let exit = <Try<
                            Ident,
                        > as Parse>::parse(parser, &mut secondary_field_0);
                        <Try<
                            Ident,
                        > as Highlightable>::highlight(
                            &mut secondary_field_0,
                            HighlightColor::Green,
                            &mut parser.highlights(),
                        );
                        exit
                    } {
                        ParseExit::Complete => {}
                        ParseExit::Cut => {
                            *output = Some(Self {
                                keyword: primary_field,
                                ident: secondary_field_0,
                                body: secondary_field_1,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                    }
                    match {
                        let exit = <Try<
                            ModBody,
                        > as Parse>::parse(parser, &mut secondary_field_1);
                        exit
                    } {
                        ParseExit::Complete => {}
                        ParseExit::Cut => {
                            *output = Some(Self {
                                keyword: primary_field,
                                ident: secondary_field_0,
                                body: secondary_field_1,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                    }
                    *output = Some(Self {
                        keyword: primary_field,
                        ident: secondary_field_0,
                        body: secondary_field_1,
                    });
                    ParseExit::Complete
                }
            }
        }
        fn detect(parser: &impl Tokenizer) -> Detection {
            'detect_fields: {
                match <ModKeyword as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                match <Try<Ident> as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                match <Try<ModBody> as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                Detection::NotDetected
            }
        }
    }
    impl ParseDesc for Mod {
        fn desc() -> &'static str {
            "a module declaration"
        }
    }
    #[desc = "either `{ } or `;`"]
    pub enum ModBody {
        Block(ModBlock),
        Semi(SemiPunct),
    }
    #[automatically_derived]
    impl ::core::fmt::Debug for ModBody {
        #[inline]
        fn fmt(&self, f: &mut ::core::fmt::Formatter) -> ::core::fmt::Result {
            match self {
                ModBody::Block(__self_0) => {
                    ::core::fmt::Formatter::debug_tuple_field1_finish(
                        f,
                        "Block",
                        &__self_0,
                    )
                }
                ModBody::Semi(__self_0) => {
                    ::core::fmt::Formatter::debug_tuple_field1_finish(
                        f,
                        "Semi",
                        &__self_0,
                    )
                }
            }
        }
    }
    impl OptionParse for ModBody {
        fn option_parse(
            parser: &mut impl Tokenizer,
            output: &mut Option<Self>,
        ) -> ParseExit {
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <ModBlock as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <ModBlock as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::Block {
                                0: primary_field,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::Block { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <SemiPunct as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <SemiPunct as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::Semi { 0: primary_field });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::Semi { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            ParseExit::Complete
        }
        fn detect(parser: &impl Tokenizer) -> Detection {
            'detect_enum: {
                Detection::NotDetected
                    | 'detect_fields: {
                        match <ModBlock as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
                    | 'detect_fields: {
                        match <SemiPunct as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
            }
        }
    }
    impl ParseDesc for ModBody {
        fn desc() -> &'static str {
            "either `{ } or `;`"
        }
    }
    #[desc = "`{ }`"]
    #[framed]
    pub struct ModBlock {
        pub frame: Frame<Braces>,
        #[parse_as(Repeated<_>)]
        pub items: Vec<Item>,
    }
    #[automatically_derived]
    impl ::core::fmt::Debug for ModBlock {
        #[inline]
        fn fmt(&self, f: &mut ::core::fmt::Formatter) -> ::core::fmt::Result {
            ::core::fmt::Formatter::debug_struct_field2_finish(
                f,
                "ModBlock",
                "frame",
                &self.frame,
                "items",
                &&self.items,
            )
        }
    }
    impl OptionParse for ModBlock {
        fn option_parse(
            parser: &mut impl Tokenizer,
            output: &mut Option<Self>,
        ) -> ParseExit {
            {
                let mut frame_output = None;
                let parse_exit = <Frame<
                    Braces,
                >>::option_parse_frame(
                    parser,
                    &mut frame_output,
                    |parser| {
                        #[allow(unused_parens)]
                        let (mut field_1) = (<Repeated<
                            _,
                        > as Into<
                            Vec<Item>,
                        >>::into(<Repeated<_> as Parse>::parse_error()));
                        #[allow(unused_labels)]
                        let parse_exit = 'parse_fields: {
                            match {
                                let exit = {
                                    let mut temp_output = <Repeated<_> as Parse>::parse_error();
                                    let exit = <Repeated<
                                        _,
                                    > as Parse>::parse(parser, &mut temp_output);
                                    *&mut field_1 = <Repeated<
                                        _,
                                    > as Into<Vec<Item>>>::into(temp_output);
                                    exit
                                };
                                exit
                            } {
                                ParseExit::Complete => {}
                                ParseExit::Cut => {
                                    break 'parse_fields ParseExit::Cut;
                                }
                            }
                            ParseExit::Complete
                        };
                        ((field_1), parse_exit)
                    },
                    |parser| {
                        #[allow(unused_parens)]
                        let (mut field_1) = (<Repeated<
                            _,
                        > as Into<
                            Vec<Item>,
                        >>::into(<Repeated<_> as Parse>::parse_error()));
                        #[allow(unused_labels)]
                        let parse_exit = 'parse_fields: {
                            match {
                                let exit = {
                                    let mut temp_output = <Repeated<_> as Parse>::parse_error();
                                    let exit = <Repeated<
                                        _,
                                    > as Parse>::parse(parser, &mut temp_output);
                                    *&mut field_1 = <Repeated<
                                        _,
                                    > as Into<Vec<Item>>>::into(temp_output);
                                    exit
                                };
                                exit
                            } {
                                ParseExit::Complete => {}
                                ParseExit::Cut => {
                                    break 'parse_fields ParseExit::Cut;
                                }
                            }
                            ParseExit::Complete
                        };
                        ((field_1), parse_exit)
                    },
                );
                #[allow(unused_parens)]
                if let Some((frame, (field_1))) = frame_output {
                    *output = Some(Self {
                        frame: frame,
                        items: field_1,
                    });
                }
                parse_exit
            }
        }
        fn detect(parser: &impl Tokenizer) -> Detection {
            <Frame<Braces>>::detect_frame(parser)
        }
    }
    impl ParseDesc for ModBlock {
        fn desc() -> &'static str {
            "`{ }`"
        }
    }
    #[desc = "a use statement"]
    pub struct Use {
        pub keyword: UseKeyword,
        pub body: Try<UseBody>,
    }
    #[automatically_derived]
    impl ::core::fmt::Debug for Use {
        #[inline]
        fn fmt(&self, f: &mut ::core::fmt::Formatter) -> ::core::fmt::Result {
            ::core::fmt::Formatter::debug_struct_field2_finish(
                f,
                "Use",
                "keyword",
                &self.keyword,
                "body",
                &&self.body,
            )
        }
    }
    impl OptionParse for Use {
        fn option_parse(
            parser: &mut impl Tokenizer,
            output: &mut Option<Self>,
        ) -> ParseExit {
            {
                #[allow(unused_labels)]
                'option_parse_fields: {
                    if 'detect_fields: {
                        match <UseKeyword as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        match <Try<UseBody> as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    } == Detection::NotDetected
                    {
                        break 'option_parse_fields ParseExit::Complete;
                    }
                    let mut primary_field = None;
                    let primary_field_exit = {
                        let exit = <UseKeyword as OptionParse>::option_parse(
                            parser,
                            &mut primary_field,
                        );
                        exit
                    };
                    let primary_field = primary_field.unwrap();
                    let mut secondary_field_0 = <Try<UseBody> as Parse>::parse_error();
                    if primary_field_exit == ParseExit::Cut {
                        *output = Some(Self {
                            keyword: primary_field,
                            body: secondary_field_0,
                        });
                        break 'option_parse_fields ParseExit::Cut;
                    }
                    match {
                        let exit = <Try<
                            UseBody,
                        > as Parse>::parse(parser, &mut secondary_field_0);
                        exit
                    } {
                        ParseExit::Complete => {}
                        ParseExit::Cut => {
                            *output = Some(Self {
                                keyword: primary_field,
                                body: secondary_field_0,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                    }
                    *output = Some(Self {
                        keyword: primary_field,
                        body: secondary_field_0,
                    });
                    ParseExit::Complete
                }
            }
        }
        fn detect(parser: &impl Tokenizer) -> Detection {
            'detect_fields: {
                match <UseKeyword as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                match <Try<UseBody> as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                Detection::NotDetected
            }
        }
    }
    impl ParseDesc for Use {
        fn desc() -> &'static str {
            "a use statement"
        }
    }
    #[desc = "a use target"]
    pub enum UseBody {
        Mod(Mod),
        UsePath(UsePath, Try<SemiPunct>),
    }
    #[automatically_derived]
    impl ::core::fmt::Debug for UseBody {
        #[inline]
        fn fmt(&self, f: &mut ::core::fmt::Formatter) -> ::core::fmt::Result {
            match self {
                UseBody::Mod(__self_0) => {
                    ::core::fmt::Formatter::debug_tuple_field1_finish(
                        f,
                        "Mod",
                        &__self_0,
                    )
                }
                UseBody::UsePath(__self_0, __self_1) => {
                    ::core::fmt::Formatter::debug_tuple_field2_finish(
                        f,
                        "UsePath",
                        __self_0,
                        &__self_1,
                    )
                }
            }
        }
    }
    impl OptionParse for UseBody {
        fn option_parse(
            parser: &mut impl Tokenizer,
            output: &mut Option<Self>,
        ) -> ParseExit {
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <Mod as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <Mod as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::Mod { 0: primary_field });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::Mod { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <UsePath as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            match <Try<SemiPunct> as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <UsePath as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        let mut secondary_field_0 = <Try<
                            SemiPunct,
                        > as Parse>::parse_error();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::UsePath {
                                0: primary_field,
                                1: secondary_field_0,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        match {
                            let exit = <Try<
                                SemiPunct,
                            > as Parse>::parse(parser, &mut secondary_field_0);
                            exit
                        } {
                            ParseExit::Complete => {}
                            ParseExit::Cut => {
                                *&mut variant_output = Some(Self::UsePath {
                                    0: primary_field,
                                    1: secondary_field_0,
                                });
                                break 'option_parse_fields ParseExit::Cut;
                            }
                        }
                        *&mut variant_output = Some(Self::UsePath {
                            0: primary_field,
                            1: secondary_field_0,
                        });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            ParseExit::Complete
        }
        fn detect(parser: &impl Tokenizer) -> Detection {
            'detect_enum: {
                Detection::NotDetected
                    | 'detect_fields: {
                        match <Mod as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
                    | 'detect_fields: {
                        match <UsePath as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        match <Try<SemiPunct> as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
            }
        }
    }
    impl ParseDesc for UseBody {
        fn desc() -> &'static str {
            "a use target"
        }
    }
    #[desc = "an import path"]
    pub enum UsePath {
        Ident(Ident, Option<UseExt>),
        Parent(ParentKeyword, Option<UseExt>),
        All(StarPunct),
        List(UseList),
    }
    #[automatically_derived]
    impl ::core::fmt::Debug for UsePath {
        #[inline]
        fn fmt(&self, f: &mut ::core::fmt::Formatter) -> ::core::fmt::Result {
            match self {
                UsePath::Ident(__self_0, __self_1) => {
                    ::core::fmt::Formatter::debug_tuple_field2_finish(
                        f,
                        "Ident",
                        __self_0,
                        &__self_1,
                    )
                }
                UsePath::Parent(__self_0, __self_1) => {
                    ::core::fmt::Formatter::debug_tuple_field2_finish(
                        f,
                        "Parent",
                        __self_0,
                        &__self_1,
                    )
                }
                UsePath::All(__self_0) => {
                    ::core::fmt::Formatter::debug_tuple_field1_finish(
                        f,
                        "All",
                        &__self_0,
                    )
                }
                UsePath::List(__self_0) => {
                    ::core::fmt::Formatter::debug_tuple_field1_finish(
                        f,
                        "List",
                        &__self_0,
                    )
                }
            }
        }
    }
    impl OptionParse for UsePath {
        fn option_parse(
            parser: &mut impl Tokenizer,
            output: &mut Option<Self>,
        ) -> ParseExit {
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <Ident as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            match <Option<UseExt> as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <Ident as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        let mut secondary_field_0 = <Option<
                            UseExt,
                        > as Parse>::parse_error();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::Ident {
                                0: primary_field,
                                1: secondary_field_0,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        match {
                            let exit = <Option<
                                UseExt,
                            > as Parse>::parse(parser, &mut secondary_field_0);
                            exit
                        } {
                            ParseExit::Complete => {}
                            ParseExit::Cut => {
                                *&mut variant_output = Some(Self::Ident {
                                    0: primary_field,
                                    1: secondary_field_0,
                                });
                                break 'option_parse_fields ParseExit::Cut;
                            }
                        }
                        *&mut variant_output = Some(Self::Ident {
                            0: primary_field,
                            1: secondary_field_0,
                        });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <ParentKeyword as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            match <Option<UseExt> as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <ParentKeyword as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        let mut secondary_field_0 = <Option<
                            UseExt,
                        > as Parse>::parse_error();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::Parent {
                                0: primary_field,
                                1: secondary_field_0,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        match {
                            let exit = <Option<
                                UseExt,
                            > as Parse>::parse(parser, &mut secondary_field_0);
                            exit
                        } {
                            ParseExit::Complete => {}
                            ParseExit::Cut => {
                                *&mut variant_output = Some(Self::Parent {
                                    0: primary_field,
                                    1: secondary_field_0,
                                });
                                break 'option_parse_fields ParseExit::Cut;
                            }
                        }
                        *&mut variant_output = Some(Self::Parent {
                            0: primary_field,
                            1: secondary_field_0,
                        });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <StarPunct as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <StarPunct as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::All { 0: primary_field });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::All { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <UseList as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <UseList as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::List { 0: primary_field });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::List { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            ParseExit::Complete
        }
        fn detect(parser: &impl Tokenizer) -> Detection {
            'detect_enum: {
                Detection::NotDetected
                    | 'detect_fields: {
                        match <Ident as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        match <Option<UseExt> as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
                    | 'detect_fields: {
                        match <ParentKeyword as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        match <Option<UseExt> as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
                    | 'detect_fields: {
                        match <StarPunct as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
                    | 'detect_fields: {
                        match <UseList as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
            }
        }
    }
    impl ParseDesc for UsePath {
        fn desc() -> &'static str {
            "an import path"
        }
    }
    #[desc = "`.`"]
    pub struct UseExt {
        pub dot: DotPunct,
        pub members: Box<Try<UsePath>>,
    }
    #[automatically_derived]
    impl ::core::fmt::Debug for UseExt {
        #[inline]
        fn fmt(&self, f: &mut ::core::fmt::Formatter) -> ::core::fmt::Result {
            ::core::fmt::Formatter::debug_struct_field2_finish(
                f,
                "UseExt",
                "dot",
                &self.dot,
                "members",
                &&self.members,
            )
        }
    }
    impl OptionParse for UseExt {
        fn option_parse(
            parser: &mut impl Tokenizer,
            output: &mut Option<Self>,
        ) -> ParseExit {
            {
                #[allow(unused_labels)]
                'option_parse_fields: {
                    if 'detect_fields: {
                        match <DotPunct as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        match <Box<Try<UsePath>> as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    } == Detection::NotDetected
                    {
                        break 'option_parse_fields ParseExit::Complete;
                    }
                    let mut primary_field = None;
                    let primary_field_exit = {
                        let exit = <DotPunct as OptionParse>::option_parse(
                            parser,
                            &mut primary_field,
                        );
                        exit
                    };
                    let primary_field = primary_field.unwrap();
                    let mut secondary_field_0 = <Box<
                        Try<UsePath>,
                    > as Parse>::parse_error();
                    if primary_field_exit == ParseExit::Cut {
                        *output = Some(Self {
                            dot: primary_field,
                            members: secondary_field_0,
                        });
                        break 'option_parse_fields ParseExit::Cut;
                    }
                    match {
                        let exit = <Box<
                            Try<UsePath>,
                        > as Parse>::parse(parser, &mut secondary_field_0);
                        exit
                    } {
                        ParseExit::Complete => {}
                        ParseExit::Cut => {
                            *output = Some(Self {
                                dot: primary_field,
                                members: secondary_field_0,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                    }
                    *output = Some(Self {
                        dot: primary_field,
                        members: secondary_field_0,
                    });
                    ParseExit::Complete
                }
            }
        }
        fn detect(parser: &impl Tokenizer) -> Detection {
            'detect_fields: {
                match <DotPunct as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                match <Box<Try<UsePath>> as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                Detection::NotDetected
            }
        }
    }
    impl ParseDesc for UseExt {
        fn desc() -> &'static str {
            "`.`"
        }
    }
    #[desc = "`{ }`"]
    #[framed]
    pub struct UseList {
        pub frame: Frame<Braces>,
        #[parse_as(Trailing<_, punct!(",")>)]
        pub paths: Vec<UsePath>,
    }
    #[automatically_derived]
    impl ::core::fmt::Debug for UseList {
        #[inline]
        fn fmt(&self, f: &mut ::core::fmt::Formatter) -> ::core::fmt::Result {
            ::core::fmt::Formatter::debug_struct_field2_finish(
                f,
                "UseList",
                "frame",
                &self.frame,
                "paths",
                &&self.paths,
            )
        }
    }
    impl OptionParse for UseList {
        fn option_parse(
            parser: &mut impl Tokenizer,
            output: &mut Option<Self>,
        ) -> ParseExit {
            {
                let mut frame_output = None;
                let parse_exit = <Frame<
                    Braces,
                >>::option_parse_frame(
                    parser,
                    &mut frame_output,
                    |parser| {
                        #[allow(unused_parens)]
                        let (mut field_1) = (<Trailing<
                            _,
                            CommaPunct,
                        > as Into<
                            Vec<UsePath>,
                        >>::into(<Trailing<_, CommaPunct> as Parse>::parse_error()));
                        #[allow(unused_labels)]
                        let parse_exit = 'parse_fields: {
                            match {
                                let exit = {
                                    let mut temp_output = <Trailing<
                                        _,
                                        CommaPunct,
                                    > as Parse>::parse_error();
                                    let exit = <Trailing<
                                        _,
                                        CommaPunct,
                                    > as Parse>::parse(parser, &mut temp_output);
                                    *&mut field_1 = <Trailing<
                                        _,
                                        CommaPunct,
                                    > as Into<Vec<UsePath>>>::into(temp_output);
                                    exit
                                };
                                exit
                            } {
                                ParseExit::Complete => {}
                                ParseExit::Cut => {
                                    break 'parse_fields ParseExit::Cut;
                                }
                            }
                            ParseExit::Complete
                        };
                        ((field_1), parse_exit)
                    },
                    |parser| {
                        #[allow(unused_parens)]
                        let (mut field_1) = (<Trailing<
                            _,
                            CommaPunct,
                        > as Into<
                            Vec<UsePath>,
                        >>::into(<Trailing<_, CommaPunct> as Parse>::parse_error()));
                        #[allow(unused_labels)]
                        let parse_exit = 'parse_fields: {
                            match {
                                let exit = {
                                    let mut temp_output = <Trailing<
                                        _,
                                        CommaPunct,
                                    > as Parse>::parse_error();
                                    let exit = <Trailing<
                                        _,
                                        CommaPunct,
                                    > as Parse>::parse(parser, &mut temp_output);
                                    *&mut field_1 = <Trailing<
                                        _,
                                        CommaPunct,
                                    > as Into<Vec<UsePath>>>::into(temp_output);
                                    exit
                                };
                                exit
                            } {
                                ParseExit::Complete => {}
                                ParseExit::Cut => {
                                    break 'parse_fields ParseExit::Cut;
                                }
                            }
                            ParseExit::Complete
                        };
                        ((field_1), parse_exit)
                    },
                );
                #[allow(unused_parens)]
                if let Some((frame, (field_1))) = frame_output {
                    *output = Some(Self {
                        frame: frame,
                        paths: field_1,
                    });
                }
                parse_exit
            }
        }
        fn detect(parser: &impl Tokenizer) -> Detection {
            <Frame<Braces>>::detect_frame(parser)
        }
    }
    impl ParseDesc for UseList {
        fn desc() -> &'static str {
            "`{ }`"
        }
    }
    #[desc = "a function declaration"]
    pub struct Fn {
        pub keyword: FnKeyword,
        #[highlight(HighlightColor::Yellow)]
        pub ident: Try<Ident>,
        pub generics: Option<FramedParams<Angles>>,
        pub input: Try<FramedParams<Parens>>,
        pub output: Option<BraceExpr>,
        pub contract: Contract,
        pub body: Try<FnBody>,
    }
    #[automatically_derived]
    impl ::core::fmt::Debug for Fn {
        #[inline]
        fn fmt(&self, f: &mut ::core::fmt::Formatter) -> ::core::fmt::Result {
            let names: &'static _ = &[
                "keyword",
                "ident",
                "generics",
                "input",
                "output",
                "contract",
                "body",
            ];
            let values: &[&dyn ::core::fmt::Debug] = &[
                &self.keyword,
                &self.ident,
                &self.generics,
                &self.input,
                &self.output,
                &self.contract,
                &&self.body,
            ];
            ::core::fmt::Formatter::debug_struct_fields_finish(f, "Fn", names, values)
        }
    }
    impl OptionParse for Fn {
        fn option_parse(
            parser: &mut impl Tokenizer,
            output: &mut Option<Self>,
        ) -> ParseExit {
            {
                #[allow(unused_labels)]
                'option_parse_fields: {
                    if 'detect_fields: {
                        match <FnKeyword as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        match <Try<Ident> as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        match <Option<
                            FramedParams<Angles>,
                        > as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        match <Try<
                            FramedParams<Parens>,
                        > as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        match <Option<BraceExpr> as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        match <Contract as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        match <Try<FnBody> as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    } == Detection::NotDetected
                    {
                        break 'option_parse_fields ParseExit::Complete;
                    }
                    let mut primary_field = None;
                    let primary_field_exit = {
                        let exit = <FnKeyword as OptionParse>::option_parse(
                            parser,
                            &mut primary_field,
                        );
                        exit
                    };
                    let primary_field = primary_field.unwrap();
                    let mut secondary_field_0 = <Try<Ident> as Parse>::parse_error();
                    let mut secondary_field_1 = <Option<
                        FramedParams<Angles>,
                    > as Parse>::parse_error();
                    let mut secondary_field_2 = <Try<
                        FramedParams<Parens>,
                    > as Parse>::parse_error();
                    let mut secondary_field_3 = <Option<
                        BraceExpr,
                    > as Parse>::parse_error();
                    let mut secondary_field_4 = <Contract as Parse>::parse_error();
                    let mut secondary_field_5 = <Try<FnBody> as Parse>::parse_error();
                    if primary_field_exit == ParseExit::Cut {
                        *output = Some(Self {
                            keyword: primary_field,
                            ident: secondary_field_0,
                            generics: secondary_field_1,
                            input: secondary_field_2,
                            output: secondary_field_3,
                            contract: secondary_field_4,
                            body: secondary_field_5,
                        });
                        break 'option_parse_fields ParseExit::Cut;
                    }
                    match {
                        let exit = <Try<
                            Ident,
                        > as Parse>::parse(parser, &mut secondary_field_0);
                        <Try<
                            Ident,
                        > as Highlightable>::highlight(
                            &mut secondary_field_0,
                            HighlightColor::Yellow,
                            &mut parser.highlights(),
                        );
                        exit
                    } {
                        ParseExit::Complete => {}
                        ParseExit::Cut => {
                            *output = Some(Self {
                                keyword: primary_field,
                                ident: secondary_field_0,
                                generics: secondary_field_1,
                                input: secondary_field_2,
                                output: secondary_field_3,
                                contract: secondary_field_4,
                                body: secondary_field_5,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                    }
                    match {
                        let exit = <Option<
                            FramedParams<Angles>,
                        > as Parse>::parse(parser, &mut secondary_field_1);
                        exit
                    } {
                        ParseExit::Complete => {}
                        ParseExit::Cut => {
                            *output = Some(Self {
                                keyword: primary_field,
                                ident: secondary_field_0,
                                generics: secondary_field_1,
                                input: secondary_field_2,
                                output: secondary_field_3,
                                contract: secondary_field_4,
                                body: secondary_field_5,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                    }
                    match {
                        let exit = <Try<
                            FramedParams<Parens>,
                        > as Parse>::parse(parser, &mut secondary_field_2);
                        exit
                    } {
                        ParseExit::Complete => {}
                        ParseExit::Cut => {
                            *output = Some(Self {
                                keyword: primary_field,
                                ident: secondary_field_0,
                                generics: secondary_field_1,
                                input: secondary_field_2,
                                output: secondary_field_3,
                                contract: secondary_field_4,
                                body: secondary_field_5,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                    }
                    match {
                        let exit = <Option<
                            BraceExpr,
                        > as Parse>::parse(parser, &mut secondary_field_3);
                        exit
                    } {
                        ParseExit::Complete => {}
                        ParseExit::Cut => {
                            *output = Some(Self {
                                keyword: primary_field,
                                ident: secondary_field_0,
                                generics: secondary_field_1,
                                input: secondary_field_2,
                                output: secondary_field_3,
                                contract: secondary_field_4,
                                body: secondary_field_5,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                    }
                    match {
                        let exit = <Contract as Parse>::parse(
                            parser,
                            &mut secondary_field_4,
                        );
                        exit
                    } {
                        ParseExit::Complete => {}
                        ParseExit::Cut => {
                            *output = Some(Self {
                                keyword: primary_field,
                                ident: secondary_field_0,
                                generics: secondary_field_1,
                                input: secondary_field_2,
                                output: secondary_field_3,
                                contract: secondary_field_4,
                                body: secondary_field_5,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                    }
                    match {
                        let exit = <Try<
                            FnBody,
                        > as Parse>::parse(parser, &mut secondary_field_5);
                        exit
                    } {
                        ParseExit::Complete => {}
                        ParseExit::Cut => {
                            *output = Some(Self {
                                keyword: primary_field,
                                ident: secondary_field_0,
                                generics: secondary_field_1,
                                input: secondary_field_2,
                                output: secondary_field_3,
                                contract: secondary_field_4,
                                body: secondary_field_5,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                    }
                    *output = Some(Self {
                        keyword: primary_field,
                        ident: secondary_field_0,
                        generics: secondary_field_1,
                        input: secondary_field_2,
                        output: secondary_field_3,
                        contract: secondary_field_4,
                        body: secondary_field_5,
                    });
                    ParseExit::Complete
                }
            }
        }
        fn detect(parser: &impl Tokenizer) -> Detection {
            'detect_fields: {
                match <FnKeyword as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                match <Try<Ident> as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                match <Option<FramedParams<Angles>> as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                match <Try<FramedParams<Parens>> as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                match <Option<BraceExpr> as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                match <Contract as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                match <Try<FnBody> as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                Detection::NotDetected
            }
        }
    }
    impl ParseDesc for Fn {
        fn desc() -> &'static str {
            "a function declaration"
        }
    }
    #[desc = "either `{ } or `;`"]
    pub enum FnBody {
        Block(Block),
        Semi(SemiPunct),
    }
    #[automatically_derived]
    impl ::core::fmt::Debug for FnBody {
        #[inline]
        fn fmt(&self, f: &mut ::core::fmt::Formatter) -> ::core::fmt::Result {
            match self {
                FnBody::Block(__self_0) => {
                    ::core::fmt::Formatter::debug_tuple_field1_finish(
                        f,
                        "Block",
                        &__self_0,
                    )
                }
                FnBody::Semi(__self_0) => {
                    ::core::fmt::Formatter::debug_tuple_field1_finish(
                        f,
                        "Semi",
                        &__self_0,
                    )
                }
            }
        }
    }
    impl OptionParse for FnBody {
        fn option_parse(
            parser: &mut impl Tokenizer,
            output: &mut Option<Self>,
        ) -> ParseExit {
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <Block as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <Block as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::Block {
                                0: primary_field,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::Block { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <SemiPunct as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <SemiPunct as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::Semi { 0: primary_field });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::Semi { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            ParseExit::Complete
        }
        fn detect(parser: &impl Tokenizer) -> Detection {
            'detect_enum: {
                Detection::NotDetected
                    | 'detect_fields: {
                        match <Block as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
                    | 'detect_fields: {
                        match <SemiPunct as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
            }
        }
    }
    impl ParseDesc for FnBody {
        fn desc() -> &'static str {
            "either `{ } or `;`"
        }
    }
    #[desc = "a system declaration"]
    pub struct Sys {
        pub keyword: SysKeyword,
        #[highlight(HighlightColor::Green)]
        pub ident: Try<Ident>,
        pub generics: Option<FramedParams<Angles>>,
        pub contract: Contract,
        pub semi: Try<SemiPunct>,
    }
    #[automatically_derived]
    impl ::core::fmt::Debug for Sys {
        #[inline]
        fn fmt(&self, f: &mut ::core::fmt::Formatter) -> ::core::fmt::Result {
            ::core::fmt::Formatter::debug_struct_field5_finish(
                f,
                "Sys",
                "keyword",
                &self.keyword,
                "ident",
                &self.ident,
                "generics",
                &self.generics,
                "contract",
                &self.contract,
                "semi",
                &&self.semi,
            )
        }
    }
    impl OptionParse for Sys {
        fn option_parse(
            parser: &mut impl Tokenizer,
            output: &mut Option<Self>,
        ) -> ParseExit {
            {
                #[allow(unused_labels)]
                'option_parse_fields: {
                    if 'detect_fields: {
                        match <SysKeyword as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        match <Try<Ident> as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        match <Option<
                            FramedParams<Angles>,
                        > as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        match <Contract as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        match <Try<SemiPunct> as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    } == Detection::NotDetected
                    {
                        break 'option_parse_fields ParseExit::Complete;
                    }
                    let mut primary_field = None;
                    let primary_field_exit = {
                        let exit = <SysKeyword as OptionParse>::option_parse(
                            parser,
                            &mut primary_field,
                        );
                        exit
                    };
                    let primary_field = primary_field.unwrap();
                    let mut secondary_field_0 = <Try<Ident> as Parse>::parse_error();
                    let mut secondary_field_1 = <Option<
                        FramedParams<Angles>,
                    > as Parse>::parse_error();
                    let mut secondary_field_2 = <Contract as Parse>::parse_error();
                    let mut secondary_field_3 = <Try<SemiPunct> as Parse>::parse_error();
                    if primary_field_exit == ParseExit::Cut {
                        *output = Some(Self {
                            keyword: primary_field,
                            ident: secondary_field_0,
                            generics: secondary_field_1,
                            contract: secondary_field_2,
                            semi: secondary_field_3,
                        });
                        break 'option_parse_fields ParseExit::Cut;
                    }
                    match {
                        let exit = <Try<
                            Ident,
                        > as Parse>::parse(parser, &mut secondary_field_0);
                        <Try<
                            Ident,
                        > as Highlightable>::highlight(
                            &mut secondary_field_0,
                            HighlightColor::Green,
                            &mut parser.highlights(),
                        );
                        exit
                    } {
                        ParseExit::Complete => {}
                        ParseExit::Cut => {
                            *output = Some(Self {
                                keyword: primary_field,
                                ident: secondary_field_0,
                                generics: secondary_field_1,
                                contract: secondary_field_2,
                                semi: secondary_field_3,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                    }
                    match {
                        let exit = <Option<
                            FramedParams<Angles>,
                        > as Parse>::parse(parser, &mut secondary_field_1);
                        exit
                    } {
                        ParseExit::Complete => {}
                        ParseExit::Cut => {
                            *output = Some(Self {
                                keyword: primary_field,
                                ident: secondary_field_0,
                                generics: secondary_field_1,
                                contract: secondary_field_2,
                                semi: secondary_field_3,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                    }
                    match {
                        let exit = <Contract as Parse>::parse(
                            parser,
                            &mut secondary_field_2,
                        );
                        exit
                    } {
                        ParseExit::Complete => {}
                        ParseExit::Cut => {
                            *output = Some(Self {
                                keyword: primary_field,
                                ident: secondary_field_0,
                                generics: secondary_field_1,
                                contract: secondary_field_2,
                                semi: secondary_field_3,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                    }
                    match {
                        let exit = <Try<
                            SemiPunct,
                        > as Parse>::parse(parser, &mut secondary_field_3);
                        exit
                    } {
                        ParseExit::Complete => {}
                        ParseExit::Cut => {
                            *output = Some(Self {
                                keyword: primary_field,
                                ident: secondary_field_0,
                                generics: secondary_field_1,
                                contract: secondary_field_2,
                                semi: secondary_field_3,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                    }
                    *output = Some(Self {
                        keyword: primary_field,
                        ident: secondary_field_0,
                        generics: secondary_field_1,
                        contract: secondary_field_2,
                        semi: secondary_field_3,
                    });
                    ParseExit::Complete
                }
            }
        }
        fn detect(parser: &impl Tokenizer) -> Detection {
            'detect_fields: {
                match <SysKeyword as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                match <Try<Ident> as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                match <Option<FramedParams<Angles>> as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                match <Contract as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                match <Try<SemiPunct> as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                Detection::NotDetected
            }
        }
    }
    impl ParseDesc for Sys {
        fn desc() -> &'static str {
            "a system declaration"
        }
    }
    #[desc = "a static"]
    pub struct Static {
        pub keyword: StaticKeyword,
        #[highlight(HighlightColor::Blue)]
        pub param: Try<Param>,
        pub value: Option<Set>,
        pub semi: Try<SemiPunct>,
    }
    #[automatically_derived]
    impl ::core::fmt::Debug for Static {
        #[inline]
        fn fmt(&self, f: &mut ::core::fmt::Formatter) -> ::core::fmt::Result {
            ::core::fmt::Formatter::debug_struct_field4_finish(
                f,
                "Static",
                "keyword",
                &self.keyword,
                "param",
                &self.param,
                "value",
                &self.value,
                "semi",
                &&self.semi,
            )
        }
    }
    impl OptionParse for Static {
        fn option_parse(
            parser: &mut impl Tokenizer,
            output: &mut Option<Self>,
        ) -> ParseExit {
            {
                #[allow(unused_labels)]
                'option_parse_fields: {
                    if 'detect_fields: {
                        match <StaticKeyword as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        match <Try<Param> as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        match <Option<Set> as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        match <Try<SemiPunct> as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    } == Detection::NotDetected
                    {
                        break 'option_parse_fields ParseExit::Complete;
                    }
                    let mut primary_field = None;
                    let primary_field_exit = {
                        let exit = <StaticKeyword as OptionParse>::option_parse(
                            parser,
                            &mut primary_field,
                        );
                        exit
                    };
                    let primary_field = primary_field.unwrap();
                    let mut secondary_field_0 = <Try<Param> as Parse>::parse_error();
                    let mut secondary_field_1 = <Option<Set> as Parse>::parse_error();
                    let mut secondary_field_2 = <Try<SemiPunct> as Parse>::parse_error();
                    if primary_field_exit == ParseExit::Cut {
                        *output = Some(Self {
                            keyword: primary_field,
                            param: secondary_field_0,
                            value: secondary_field_1,
                            semi: secondary_field_2,
                        });
                        break 'option_parse_fields ParseExit::Cut;
                    }
                    match {
                        let exit = <Try<
                            Param,
                        > as Parse>::parse(parser, &mut secondary_field_0);
                        <Try<
                            Param,
                        > as Highlightable>::highlight(
                            &mut secondary_field_0,
                            HighlightColor::Blue,
                            &mut parser.highlights(),
                        );
                        exit
                    } {
                        ParseExit::Complete => {}
                        ParseExit::Cut => {
                            *output = Some(Self {
                                keyword: primary_field,
                                param: secondary_field_0,
                                value: secondary_field_1,
                                semi: secondary_field_2,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                    }
                    match {
                        let exit = <Option<
                            Set,
                        > as Parse>::parse(parser, &mut secondary_field_1);
                        exit
                    } {
                        ParseExit::Complete => {}
                        ParseExit::Cut => {
                            *output = Some(Self {
                                keyword: primary_field,
                                param: secondary_field_0,
                                value: secondary_field_1,
                                semi: secondary_field_2,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                    }
                    match {
                        let exit = <Try<
                            SemiPunct,
                        > as Parse>::parse(parser, &mut secondary_field_2);
                        exit
                    } {
                        ParseExit::Complete => {}
                        ParseExit::Cut => {
                            *output = Some(Self {
                                keyword: primary_field,
                                param: secondary_field_0,
                                value: secondary_field_1,
                                semi: secondary_field_2,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                    }
                    *output = Some(Self {
                        keyword: primary_field,
                        param: secondary_field_0,
                        value: secondary_field_1,
                        semi: secondary_field_2,
                    });
                    ParseExit::Complete
                }
            }
        }
        fn detect(parser: &impl Tokenizer) -> Detection {
            'detect_fields: {
                match <StaticKeyword as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                match <Try<Param> as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                match <Option<Set> as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                match <Try<SemiPunct> as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                Detection::NotDetected
            }
        }
    }
    impl ParseDesc for Static {
        fn desc() -> &'static str {
            "a static"
        }
    }
    #[desc = "a trait"]
    pub struct Trait {
        pub keyword: TraitKeyword,
        pub mut_: Option<MutKeyword>,
        #[highlight(HighlightColor::Green)]
        pub ident: Try<Ident>,
        pub generics: Option<FramedParams<Angles>>,
        pub target: Option<TraitTarget>,
        pub contract: Contract,
        pub body: Try<ModBody>,
    }
    #[automatically_derived]
    impl ::core::fmt::Debug for Trait {
        #[inline]
        fn fmt(&self, f: &mut ::core::fmt::Formatter) -> ::core::fmt::Result {
            let names: &'static _ = &[
                "keyword",
                "mut_",
                "ident",
                "generics",
                "target",
                "contract",
                "body",
            ];
            let values: &[&dyn ::core::fmt::Debug] = &[
                &self.keyword,
                &self.mut_,
                &self.ident,
                &self.generics,
                &self.target,
                &self.contract,
                &&self.body,
            ];
            ::core::fmt::Formatter::debug_struct_fields_finish(f, "Trait", names, values)
        }
    }
    impl OptionParse for Trait {
        fn option_parse(
            parser: &mut impl Tokenizer,
            output: &mut Option<Self>,
        ) -> ParseExit {
            {
                #[allow(unused_labels)]
                'option_parse_fields: {
                    if 'detect_fields: {
                        match <TraitKeyword as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        match <Option<MutKeyword> as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        match <Try<Ident> as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        match <Option<
                            FramedParams<Angles>,
                        > as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        match <Option<TraitTarget> as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        match <Contract as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        match <Try<ModBody> as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    } == Detection::NotDetected
                    {
                        break 'option_parse_fields ParseExit::Complete;
                    }
                    let mut primary_field = None;
                    let primary_field_exit = {
                        let exit = <TraitKeyword as OptionParse>::option_parse(
                            parser,
                            &mut primary_field,
                        );
                        exit
                    };
                    let primary_field = primary_field.unwrap();
                    let mut secondary_field_0 = <Option<
                        MutKeyword,
                    > as Parse>::parse_error();
                    let mut secondary_field_1 = <Try<Ident> as Parse>::parse_error();
                    let mut secondary_field_2 = <Option<
                        FramedParams<Angles>,
                    > as Parse>::parse_error();
                    let mut secondary_field_3 = <Option<
                        TraitTarget,
                    > as Parse>::parse_error();
                    let mut secondary_field_4 = <Contract as Parse>::parse_error();
                    let mut secondary_field_5 = <Try<ModBody> as Parse>::parse_error();
                    if primary_field_exit == ParseExit::Cut {
                        *output = Some(Self {
                            keyword: primary_field,
                            mut_: secondary_field_0,
                            ident: secondary_field_1,
                            generics: secondary_field_2,
                            target: secondary_field_3,
                            contract: secondary_field_4,
                            body: secondary_field_5,
                        });
                        break 'option_parse_fields ParseExit::Cut;
                    }
                    match {
                        let exit = <Option<
                            MutKeyword,
                        > as Parse>::parse(parser, &mut secondary_field_0);
                        exit
                    } {
                        ParseExit::Complete => {}
                        ParseExit::Cut => {
                            *output = Some(Self {
                                keyword: primary_field,
                                mut_: secondary_field_0,
                                ident: secondary_field_1,
                                generics: secondary_field_2,
                                target: secondary_field_3,
                                contract: secondary_field_4,
                                body: secondary_field_5,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                    }
                    match {
                        let exit = <Try<
                            Ident,
                        > as Parse>::parse(parser, &mut secondary_field_1);
                        <Try<
                            Ident,
                        > as Highlightable>::highlight(
                            &mut secondary_field_1,
                            HighlightColor::Green,
                            &mut parser.highlights(),
                        );
                        exit
                    } {
                        ParseExit::Complete => {}
                        ParseExit::Cut => {
                            *output = Some(Self {
                                keyword: primary_field,
                                mut_: secondary_field_0,
                                ident: secondary_field_1,
                                generics: secondary_field_2,
                                target: secondary_field_3,
                                contract: secondary_field_4,
                                body: secondary_field_5,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                    }
                    match {
                        let exit = <Option<
                            FramedParams<Angles>,
                        > as Parse>::parse(parser, &mut secondary_field_2);
                        exit
                    } {
                        ParseExit::Complete => {}
                        ParseExit::Cut => {
                            *output = Some(Self {
                                keyword: primary_field,
                                mut_: secondary_field_0,
                                ident: secondary_field_1,
                                generics: secondary_field_2,
                                target: secondary_field_3,
                                contract: secondary_field_4,
                                body: secondary_field_5,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                    }
                    match {
                        let exit = <Option<
                            TraitTarget,
                        > as Parse>::parse(parser, &mut secondary_field_3);
                        exit
                    } {
                        ParseExit::Complete => {}
                        ParseExit::Cut => {
                            *output = Some(Self {
                                keyword: primary_field,
                                mut_: secondary_field_0,
                                ident: secondary_field_1,
                                generics: secondary_field_2,
                                target: secondary_field_3,
                                contract: secondary_field_4,
                                body: secondary_field_5,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                    }
                    match {
                        let exit = <Contract as Parse>::parse(
                            parser,
                            &mut secondary_field_4,
                        );
                        exit
                    } {
                        ParseExit::Complete => {}
                        ParseExit::Cut => {
                            *output = Some(Self {
                                keyword: primary_field,
                                mut_: secondary_field_0,
                                ident: secondary_field_1,
                                generics: secondary_field_2,
                                target: secondary_field_3,
                                contract: secondary_field_4,
                                body: secondary_field_5,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                    }
                    match {
                        let exit = <Try<
                            ModBody,
                        > as Parse>::parse(parser, &mut secondary_field_5);
                        exit
                    } {
                        ParseExit::Complete => {}
                        ParseExit::Cut => {
                            *output = Some(Self {
                                keyword: primary_field,
                                mut_: secondary_field_0,
                                ident: secondary_field_1,
                                generics: secondary_field_2,
                                target: secondary_field_3,
                                contract: secondary_field_4,
                                body: secondary_field_5,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                    }
                    *output = Some(Self {
                        keyword: primary_field,
                        mut_: secondary_field_0,
                        ident: secondary_field_1,
                        generics: secondary_field_2,
                        target: secondary_field_3,
                        contract: secondary_field_4,
                        body: secondary_field_5,
                    });
                    ParseExit::Complete
                }
            }
        }
        fn detect(parser: &impl Tokenizer) -> Detection {
            'detect_fields: {
                match <TraitKeyword as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                match <Option<MutKeyword> as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                match <Try<Ident> as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                match <Option<FramedParams<Angles>> as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                match <Option<TraitTarget> as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                match <Contract as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                match <Try<ModBody> as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                Detection::NotDetected
            }
        }
    }
    impl ParseDesc for Trait {
        fn desc() -> &'static str {
            "a trait"
        }
    }
    #[desc = "a trait target type"]
    #[framed]
    pub struct TraitTarget {
        pub frame: Frame<Parens>,
        pub target: Try<Expr>,
    }
    #[automatically_derived]
    impl ::core::fmt::Debug for TraitTarget {
        #[inline]
        fn fmt(&self, f: &mut ::core::fmt::Formatter) -> ::core::fmt::Result {
            ::core::fmt::Formatter::debug_struct_field2_finish(
                f,
                "TraitTarget",
                "frame",
                &self.frame,
                "target",
                &&self.target,
            )
        }
    }
    impl OptionParse for TraitTarget {
        fn option_parse(
            parser: &mut impl Tokenizer,
            output: &mut Option<Self>,
        ) -> ParseExit {
            {
                let mut frame_output = None;
                let parse_exit = <Frame<
                    Parens,
                >>::option_parse_frame(
                    parser,
                    &mut frame_output,
                    |parser| {
                        #[allow(unused_parens)]
                        let (mut field_1) = (<Try<Expr> as Parse>::parse_error());
                        #[allow(unused_labels)]
                        let parse_exit = 'parse_fields: {
                            match {
                                let exit = <Try<
                                    Expr,
                                > as Parse>::parse(parser, &mut field_1);
                                exit
                            } {
                                ParseExit::Complete => {}
                                ParseExit::Cut => {
                                    break 'parse_fields ParseExit::Cut;
                                }
                            }
                            ParseExit::Complete
                        };
                        ((field_1), parse_exit)
                    },
                    |parser| {
                        #[allow(unused_parens)]
                        let (mut field_1) = (<Try<Expr> as Parse>::parse_error());
                        #[allow(unused_labels)]
                        let parse_exit = 'parse_fields: {
                            match {
                                let exit = <Try<
                                    Expr,
                                > as Parse>::parse(parser, &mut field_1);
                                exit
                            } {
                                ParseExit::Complete => {}
                                ParseExit::Cut => {
                                    break 'parse_fields ParseExit::Cut;
                                }
                            }
                            ParseExit::Complete
                        };
                        ((field_1), parse_exit)
                    },
                );
                #[allow(unused_parens)]
                if let Some((frame, (field_1))) = frame_output {
                    *output = Some(Self {
                        frame: frame,
                        target: field_1,
                    });
                }
                parse_exit
            }
        }
        fn detect(parser: &impl Tokenizer) -> Detection {
            <Frame<Parens>>::detect_frame(parser)
        }
    }
    impl ParseDesc for TraitTarget {
        fn desc() -> &'static str {
            "a trait target type"
        }
    }
}
mod param {
    use super::*;
    #[desc = "a parameter"]
    #[framed]
    pub struct FramedParams<D: FrameDelimiters> {
        pub frame: Frame<D>,
        #[highlightable]
        #[parse_as(Trailing<_, punct!(",")>)]
        pub items: Vec<Param>,
        pub contract: Contract,
    }
    #[automatically_derived]
    impl<D: ::core::fmt::Debug + FrameDelimiters> ::core::fmt::Debug
    for FramedParams<D> {
        #[inline]
        fn fmt(&self, f: &mut ::core::fmt::Formatter) -> ::core::fmt::Result {
            ::core::fmt::Formatter::debug_struct_field3_finish(
                f,
                "FramedParams",
                "frame",
                &self.frame,
                "items",
                &self.items,
                "contract",
                &&self.contract,
            )
        }
    }
    impl<D: FrameDelimiters> OptionParse for FramedParams<D> {
        fn option_parse(
            parser: &mut impl Tokenizer,
            output: &mut Option<Self>,
        ) -> ParseExit {
            {
                let mut frame_output = None;
                let parse_exit = <Frame<
                    D,
                >>::option_parse_frame(
                    parser,
                    &mut frame_output,
                    |parser| {
                        #[allow(unused_parens)]
                        let (mut field_1, mut field_2) = (
                            <Trailing<
                                _,
                                CommaPunct,
                            > as Into<
                                Vec<Param>,
                            >>::into(<Trailing<_, CommaPunct> as Parse>::parse_error()),
                            <Contract as Parse>::parse_error(),
                        );
                        #[allow(unused_labels)]
                        let parse_exit = 'parse_fields: {
                            match {
                                let exit = {
                                    let mut temp_output = <Trailing<
                                        _,
                                        CommaPunct,
                                    > as Parse>::parse_error();
                                    let exit = <Trailing<
                                        _,
                                        CommaPunct,
                                    > as Parse>::parse(parser, &mut temp_output);
                                    *&mut field_1 = <Trailing<
                                        _,
                                        CommaPunct,
                                    > as Into<Vec<Param>>>::into(temp_output);
                                    exit
                                };
                                exit
                            } {
                                ParseExit::Complete => {}
                                ParseExit::Cut => {
                                    break 'parse_fields ParseExit::Cut;
                                }
                            }
                            match {
                                let exit = <Contract as Parse>::parse(parser, &mut field_2);
                                exit
                            } {
                                ParseExit::Complete => {}
                                ParseExit::Cut => {
                                    break 'parse_fields ParseExit::Cut;
                                }
                            }
                            ParseExit::Complete
                        };
                        ((field_1, field_2), parse_exit)
                    },
                    |parser| {
                        #[allow(unused_parens)]
                        let (mut field_1, mut field_2) = (
                            <Trailing<
                                _,
                                CommaPunct,
                            > as Into<
                                Vec<Param>,
                            >>::into(<Trailing<_, CommaPunct> as Parse>::parse_error()),
                            <Contract as Parse>::parse_error(),
                        );
                        #[allow(unused_labels)]
                        let parse_exit = 'parse_fields: {
                            match {
                                let exit = {
                                    let mut temp_output = <Trailing<
                                        _,
                                        CommaPunct,
                                    > as Parse>::parse_error();
                                    let exit = <Trailing<
                                        _,
                                        CommaPunct,
                                    > as Parse>::parse(parser, &mut temp_output);
                                    *&mut field_1 = <Trailing<
                                        _,
                                        CommaPunct,
                                    > as Into<Vec<Param>>>::into(temp_output);
                                    exit
                                };
                                exit
                            } {
                                ParseExit::Complete => {}
                                ParseExit::Cut => {
                                    break 'parse_fields ParseExit::Cut;
                                }
                            }
                            match {
                                let exit = <Contract as Parse>::parse(parser, &mut field_2);
                                exit
                            } {
                                ParseExit::Complete => {}
                                ParseExit::Cut => {
                                    break 'parse_fields ParseExit::Cut;
                                }
                            }
                            ParseExit::Complete
                        };
                        ((field_1, field_2), parse_exit)
                    },
                );
                #[allow(unused_parens)]
                if let Some((frame, (field_1, field_2))) = frame_output {
                    *output = Some(Self {
                        frame: frame,
                        items: field_1,
                        contract: field_2,
                    });
                }
                parse_exit
            }
        }
        fn detect(parser: &impl Tokenizer) -> Detection {
            <Frame<D>>::detect_frame(parser)
        }
    }
    impl<D: FrameDelimiters> ParseDesc for FramedParams<D> {
        fn desc() -> &'static str {
            "a parameter"
        }
    }
    impl<D: FrameDelimiters> Highlightable for FramedParams<D> {
        fn highlight(&self, color: HighlightColor, h: &mut Vec<Highlight>) {
            {
                <Vec<Param> as Highlightable>::highlight(&self.items, color, h);
            }
        }
    }
    #[desc = "a parameter"]
    pub struct Param {
        pub pub_: Option<PubKeyword>,
        pub mut_: Option<MutKeyword>,
        #[highlightable]
        pub body: Try<ParamBody>,
        pub type_: Option<AngleUnaryExpr>,
        pub bounds: Option<Bounds>,
    }
    #[automatically_derived]
    impl ::core::fmt::Debug for Param {
        #[inline]
        fn fmt(&self, f: &mut ::core::fmt::Formatter) -> ::core::fmt::Result {
            ::core::fmt::Formatter::debug_struct_field5_finish(
                f,
                "Param",
                "pub_",
                &self.pub_,
                "mut_",
                &self.mut_,
                "body",
                &self.body,
                "type_",
                &self.type_,
                "bounds",
                &&self.bounds,
            )
        }
    }
    impl OptionParse for Param {
        fn option_parse(
            parser: &mut impl Tokenizer,
            output: &mut Option<Self>,
        ) -> ParseExit {
            {
                #[allow(unused_labels)]
                'option_parse_fields: {
                    if 'detect_fields: {
                        match <Option<PubKeyword> as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        match <Option<MutKeyword> as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        match <Try<ParamBody> as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        match <Option<AngleUnaryExpr> as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        match <Option<Bounds> as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    } == Detection::NotDetected
                    {
                        break 'option_parse_fields ParseExit::Complete;
                    }
                    let mut primary_field = None;
                    let primary_field_exit = {
                        let exit = <Option<
                            PubKeyword,
                        > as OptionParse>::option_parse(parser, &mut primary_field);
                        exit
                    };
                    let primary_field = primary_field.unwrap();
                    let mut secondary_field_0 = <Option<
                        MutKeyword,
                    > as Parse>::parse_error();
                    let mut secondary_field_1 = <Try<ParamBody> as Parse>::parse_error();
                    let mut secondary_field_2 = <Option<
                        AngleUnaryExpr,
                    > as Parse>::parse_error();
                    let mut secondary_field_3 = <Option<Bounds> as Parse>::parse_error();
                    if primary_field_exit == ParseExit::Cut {
                        *output = Some(Self {
                            pub_: primary_field,
                            mut_: secondary_field_0,
                            body: secondary_field_1,
                            type_: secondary_field_2,
                            bounds: secondary_field_3,
                        });
                        break 'option_parse_fields ParseExit::Cut;
                    }
                    match {
                        let exit = <Option<
                            MutKeyword,
                        > as Parse>::parse(parser, &mut secondary_field_0);
                        exit
                    } {
                        ParseExit::Complete => {}
                        ParseExit::Cut => {
                            *output = Some(Self {
                                pub_: primary_field,
                                mut_: secondary_field_0,
                                body: secondary_field_1,
                                type_: secondary_field_2,
                                bounds: secondary_field_3,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                    }
                    match {
                        let exit = <Try<
                            ParamBody,
                        > as Parse>::parse(parser, &mut secondary_field_1);
                        exit
                    } {
                        ParseExit::Complete => {}
                        ParseExit::Cut => {
                            *output = Some(Self {
                                pub_: primary_field,
                                mut_: secondary_field_0,
                                body: secondary_field_1,
                                type_: secondary_field_2,
                                bounds: secondary_field_3,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                    }
                    match {
                        let exit = <Option<
                            AngleUnaryExpr,
                        > as Parse>::parse(parser, &mut secondary_field_2);
                        exit
                    } {
                        ParseExit::Complete => {}
                        ParseExit::Cut => {
                            *output = Some(Self {
                                pub_: primary_field,
                                mut_: secondary_field_0,
                                body: secondary_field_1,
                                type_: secondary_field_2,
                                bounds: secondary_field_3,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                    }
                    match {
                        let exit = <Option<
                            Bounds,
                        > as Parse>::parse(parser, &mut secondary_field_3);
                        exit
                    } {
                        ParseExit::Complete => {}
                        ParseExit::Cut => {
                            *output = Some(Self {
                                pub_: primary_field,
                                mut_: secondary_field_0,
                                body: secondary_field_1,
                                type_: secondary_field_2,
                                bounds: secondary_field_3,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                    }
                    *output = Some(Self {
                        pub_: primary_field,
                        mut_: secondary_field_0,
                        body: secondary_field_1,
                        type_: secondary_field_2,
                        bounds: secondary_field_3,
                    });
                    ParseExit::Complete
                }
            }
        }
        fn detect(parser: &impl Tokenizer) -> Detection {
            'detect_fields: {
                match <Option<PubKeyword> as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                match <Option<MutKeyword> as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                match <Try<ParamBody> as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                match <Option<AngleUnaryExpr> as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                match <Option<Bounds> as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                Detection::NotDetected
            }
        }
    }
    impl ParseDesc for Param {
        fn desc() -> &'static str {
            "a parameter"
        }
    }
    impl Highlightable for Param {
        fn highlight(&self, color: HighlightColor, h: &mut Vec<Highlight>) {
            {
                <Try<ParamBody> as Highlightable>::highlight(&self.body, color, h);
            }
        }
    }
    #[desc = "a parameter"]
    pub enum ParamBody {
        Ident(#[highlightable] Ident),
        Tuple(#[highlightable] FramedParams<Parens>),
    }
    #[automatically_derived]
    impl ::core::fmt::Debug for ParamBody {
        #[inline]
        fn fmt(&self, f: &mut ::core::fmt::Formatter) -> ::core::fmt::Result {
            match self {
                ParamBody::Ident(__self_0) => {
                    ::core::fmt::Formatter::debug_tuple_field1_finish(
                        f,
                        "Ident",
                        &__self_0,
                    )
                }
                ParamBody::Tuple(__self_0) => {
                    ::core::fmt::Formatter::debug_tuple_field1_finish(
                        f,
                        "Tuple",
                        &__self_0,
                    )
                }
            }
        }
    }
    impl OptionParse for ParamBody {
        fn option_parse(
            parser: &mut impl Tokenizer,
            output: &mut Option<Self>,
        ) -> ParseExit {
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <Ident as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <Ident as OptionParse>::option_parse(
                                parser,
                                &mut primary_field,
                            );
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::Ident {
                                0: primary_field,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::Ident { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            {
                let mut variant_output = None;
                let variant_option_parse_exit = {
                    #[allow(unused_labels)]
                    'option_parse_fields: {
                        if 'detect_fields: {
                            match <FramedParams<Parens> as OptionParse>::detect(parser) {
                                Detection::Detected => {
                                    break 'detect_fields Detection::Detected;
                                }
                                Detection::NotDetected => {
                                    break 'detect_fields Detection::NotDetected;
                                }
                                Detection::EmptyDetected => {}
                            }
                            Detection::NotDetected
                        } == Detection::NotDetected
                        {
                            break 'option_parse_fields ParseExit::Complete;
                        }
                        let mut primary_field = None;
                        let primary_field_exit = {
                            let exit = <FramedParams<
                                Parens,
                            > as OptionParse>::option_parse(parser, &mut primary_field);
                            exit
                        };
                        let primary_field = primary_field.unwrap();
                        if primary_field_exit == ParseExit::Cut {
                            *&mut variant_output = Some(Self::Tuple {
                                0: primary_field,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                        *&mut variant_output = Some(Self::Tuple { 0: primary_field });
                        ParseExit::Complete
                    }
                };
                if let Some(variant_output) = variant_output {
                    *output = Some(variant_output);
                    return variant_option_parse_exit;
                }
            }
            ParseExit::Complete
        }
        fn detect(parser: &impl Tokenizer) -> Detection {
            'detect_enum: {
                Detection::NotDetected
                    | 'detect_fields: {
                        match <Ident as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
                    | 'detect_fields: {
                        match <FramedParams<Parens> as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    }
            }
        }
    }
    impl ParseDesc for ParamBody {
        fn desc() -> &'static str {
            "a parameter"
        }
    }
    impl Highlightable for ParamBody {
        fn highlight(&self, color: HighlightColor, h: &mut Vec<Highlight>) {
            match self {
                Self::Ident(field_0) => {
                    <Ident as Highlightable>::highlight(field_0, color, h);
                }
                Self::Tuple(field_0) => {
                    <FramedParams<
                        Parens,
                    > as Highlightable>::highlight(field_0, color, h);
                }
            }
        }
    }
    #[desc = "`: ...`"]
    pub struct Bounds {
        pub colon: ColonPunct,
        pub expr: Try<Expr>,
    }
    #[automatically_derived]
    impl ::core::fmt::Debug for Bounds {
        #[inline]
        fn fmt(&self, f: &mut ::core::fmt::Formatter) -> ::core::fmt::Result {
            ::core::fmt::Formatter::debug_struct_field2_finish(
                f,
                "Bounds",
                "colon",
                &self.colon,
                "expr",
                &&self.expr,
            )
        }
    }
    impl OptionParse for Bounds {
        fn option_parse(
            parser: &mut impl Tokenizer,
            output: &mut Option<Self>,
        ) -> ParseExit {
            {
                #[allow(unused_labels)]
                'option_parse_fields: {
                    if 'detect_fields: {
                        match <ColonPunct as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        match <Try<Expr> as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    } == Detection::NotDetected
                    {
                        break 'option_parse_fields ParseExit::Complete;
                    }
                    let mut primary_field = None;
                    let primary_field_exit = {
                        let exit = <ColonPunct as OptionParse>::option_parse(
                            parser,
                            &mut primary_field,
                        );
                        exit
                    };
                    let primary_field = primary_field.unwrap();
                    let mut secondary_field_0 = <Try<Expr> as Parse>::parse_error();
                    if primary_field_exit == ParseExit::Cut {
                        *output = Some(Self {
                            colon: primary_field,
                            expr: secondary_field_0,
                        });
                        break 'option_parse_fields ParseExit::Cut;
                    }
                    match {
                        let exit = <Try<
                            Expr,
                        > as Parse>::parse(parser, &mut secondary_field_0);
                        exit
                    } {
                        ParseExit::Complete => {}
                        ParseExit::Cut => {
                            *output = Some(Self {
                                colon: primary_field,
                                expr: secondary_field_0,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                    }
                    *output = Some(Self {
                        colon: primary_field,
                        expr: secondary_field_0,
                    });
                    ParseExit::Complete
                }
            }
        }
        fn detect(parser: &impl Tokenizer) -> Detection {
            'detect_fields: {
                match <ColonPunct as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                match <Try<Expr> as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                Detection::NotDetected
            }
        }
    }
    impl ParseDesc for Bounds {
        fn desc() -> &'static str {
            "`: ...`"
        }
    }
}
mod type_ {
    use super::*;
    #[desc = "a type declaration"]
    pub struct Type {
        pub keyword: TypeKeyword,
        #[highlight(HighlightColor::Green)]
        pub ident: Try<Ident>,
        pub generics: Option<FramedParams<Angles>>,
        pub contract: Contract,
        pub semi: Try<SemiPunct>,
    }
    #[automatically_derived]
    impl ::core::fmt::Debug for Type {
        #[inline]
        fn fmt(&self, f: &mut ::core::fmt::Formatter) -> ::core::fmt::Result {
            ::core::fmt::Formatter::debug_struct_field5_finish(
                f,
                "Type",
                "keyword",
                &self.keyword,
                "ident",
                &self.ident,
                "generics",
                &self.generics,
                "contract",
                &self.contract,
                "semi",
                &&self.semi,
            )
        }
    }
    impl OptionParse for Type {
        fn option_parse(
            parser: &mut impl Tokenizer,
            output: &mut Option<Self>,
        ) -> ParseExit {
            {
                #[allow(unused_labels)]
                'option_parse_fields: {
                    if 'detect_fields: {
                        match <TypeKeyword as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        match <Try<Ident> as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        match <Option<
                            FramedParams<Angles>,
                        > as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        match <Contract as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        match <Try<SemiPunct> as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    } == Detection::NotDetected
                    {
                        break 'option_parse_fields ParseExit::Complete;
                    }
                    let mut primary_field = None;
                    let primary_field_exit = {
                        let exit = <TypeKeyword as OptionParse>::option_parse(
                            parser,
                            &mut primary_field,
                        );
                        exit
                    };
                    let primary_field = primary_field.unwrap();
                    let mut secondary_field_0 = <Try<Ident> as Parse>::parse_error();
                    let mut secondary_field_1 = <Option<
                        FramedParams<Angles>,
                    > as Parse>::parse_error();
                    let mut secondary_field_2 = <Contract as Parse>::parse_error();
                    let mut secondary_field_3 = <Try<SemiPunct> as Parse>::parse_error();
                    if primary_field_exit == ParseExit::Cut {
                        *output = Some(Self {
                            keyword: primary_field,
                            ident: secondary_field_0,
                            generics: secondary_field_1,
                            contract: secondary_field_2,
                            semi: secondary_field_3,
                        });
                        break 'option_parse_fields ParseExit::Cut;
                    }
                    match {
                        let exit = <Try<
                            Ident,
                        > as Parse>::parse(parser, &mut secondary_field_0);
                        <Try<
                            Ident,
                        > as Highlightable>::highlight(
                            &mut secondary_field_0,
                            HighlightColor::Green,
                            &mut parser.highlights(),
                        );
                        exit
                    } {
                        ParseExit::Complete => {}
                        ParseExit::Cut => {
                            *output = Some(Self {
                                keyword: primary_field,
                                ident: secondary_field_0,
                                generics: secondary_field_1,
                                contract: secondary_field_2,
                                semi: secondary_field_3,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                    }
                    match {
                        let exit = <Option<
                            FramedParams<Angles>,
                        > as Parse>::parse(parser, &mut secondary_field_1);
                        exit
                    } {
                        ParseExit::Complete => {}
                        ParseExit::Cut => {
                            *output = Some(Self {
                                keyword: primary_field,
                                ident: secondary_field_0,
                                generics: secondary_field_1,
                                contract: secondary_field_2,
                                semi: secondary_field_3,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                    }
                    match {
                        let exit = <Contract as Parse>::parse(
                            parser,
                            &mut secondary_field_2,
                        );
                        exit
                    } {
                        ParseExit::Complete => {}
                        ParseExit::Cut => {
                            *output = Some(Self {
                                keyword: primary_field,
                                ident: secondary_field_0,
                                generics: secondary_field_1,
                                contract: secondary_field_2,
                                semi: secondary_field_3,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                    }
                    match {
                        let exit = <Try<
                            SemiPunct,
                        > as Parse>::parse(parser, &mut secondary_field_3);
                        exit
                    } {
                        ParseExit::Complete => {}
                        ParseExit::Cut => {
                            *output = Some(Self {
                                keyword: primary_field,
                                ident: secondary_field_0,
                                generics: secondary_field_1,
                                contract: secondary_field_2,
                                semi: secondary_field_3,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                    }
                    *output = Some(Self {
                        keyword: primary_field,
                        ident: secondary_field_0,
                        generics: secondary_field_1,
                        contract: secondary_field_2,
                        semi: secondary_field_3,
                    });
                    ParseExit::Complete
                }
            }
        }
        fn detect(parser: &impl Tokenizer) -> Detection {
            'detect_fields: {
                match <TypeKeyword as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                match <Try<Ident> as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                match <Option<FramedParams<Angles>> as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                match <Contract as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                match <Try<SemiPunct> as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                Detection::NotDetected
            }
        }
    }
    impl ParseDesc for Type {
        fn desc() -> &'static str {
            "a type declaration"
        }
    }
    #[desc = "a struct declaration"]
    pub struct Struct {
        pub keyword: StructKeyword,
        #[highlight(HighlightColor::Green)]
        pub ident: Try<Ident>,
        pub generics: Option<GenericParams>,
        pub contract: Contract,
        #[highlight(HighlightColor::Cyan)]
        pub fields: Try<FramedParams<Braces>>,
    }
    #[automatically_derived]
    impl ::core::fmt::Debug for Struct {
        #[inline]
        fn fmt(&self, f: &mut ::core::fmt::Formatter) -> ::core::fmt::Result {
            ::core::fmt::Formatter::debug_struct_field5_finish(
                f,
                "Struct",
                "keyword",
                &self.keyword,
                "ident",
                &self.ident,
                "generics",
                &self.generics,
                "contract",
                &self.contract,
                "fields",
                &&self.fields,
            )
        }
    }
    impl OptionParse for Struct {
        fn option_parse(
            parser: &mut impl Tokenizer,
            output: &mut Option<Self>,
        ) -> ParseExit {
            {
                #[allow(unused_labels)]
                'option_parse_fields: {
                    if 'detect_fields: {
                        match <StructKeyword as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        match <Try<Ident> as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        match <Option<GenericParams> as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        match <Contract as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        match <Try<
                            FramedParams<Braces>,
                        > as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    } == Detection::NotDetected
                    {
                        break 'option_parse_fields ParseExit::Complete;
                    }
                    let mut primary_field = None;
                    let primary_field_exit = {
                        let exit = <StructKeyword as OptionParse>::option_parse(
                            parser,
                            &mut primary_field,
                        );
                        exit
                    };
                    let primary_field = primary_field.unwrap();
                    let mut secondary_field_0 = <Try<Ident> as Parse>::parse_error();
                    let mut secondary_field_1 = <Option<
                        GenericParams,
                    > as Parse>::parse_error();
                    let mut secondary_field_2 = <Contract as Parse>::parse_error();
                    let mut secondary_field_3 = <Try<
                        FramedParams<Braces>,
                    > as Parse>::parse_error();
                    if primary_field_exit == ParseExit::Cut {
                        *output = Some(Self {
                            keyword: primary_field,
                            ident: secondary_field_0,
                            generics: secondary_field_1,
                            contract: secondary_field_2,
                            fields: secondary_field_3,
                        });
                        break 'option_parse_fields ParseExit::Cut;
                    }
                    match {
                        let exit = <Try<
                            Ident,
                        > as Parse>::parse(parser, &mut secondary_field_0);
                        <Try<
                            Ident,
                        > as Highlightable>::highlight(
                            &mut secondary_field_0,
                            HighlightColor::Green,
                            &mut parser.highlights(),
                        );
                        exit
                    } {
                        ParseExit::Complete => {}
                        ParseExit::Cut => {
                            *output = Some(Self {
                                keyword: primary_field,
                                ident: secondary_field_0,
                                generics: secondary_field_1,
                                contract: secondary_field_2,
                                fields: secondary_field_3,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                    }
                    match {
                        let exit = <Option<
                            GenericParams,
                        > as Parse>::parse(parser, &mut secondary_field_1);
                        exit
                    } {
                        ParseExit::Complete => {}
                        ParseExit::Cut => {
                            *output = Some(Self {
                                keyword: primary_field,
                                ident: secondary_field_0,
                                generics: secondary_field_1,
                                contract: secondary_field_2,
                                fields: secondary_field_3,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                    }
                    match {
                        let exit = <Contract as Parse>::parse(
                            parser,
                            &mut secondary_field_2,
                        );
                        exit
                    } {
                        ParseExit::Complete => {}
                        ParseExit::Cut => {
                            *output = Some(Self {
                                keyword: primary_field,
                                ident: secondary_field_0,
                                generics: secondary_field_1,
                                contract: secondary_field_2,
                                fields: secondary_field_3,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                    }
                    match {
                        let exit = <Try<
                            FramedParams<Braces>,
                        > as Parse>::parse(parser, &mut secondary_field_3);
                        <Try<
                            FramedParams<Braces>,
                        > as Highlightable>::highlight(
                            &mut secondary_field_3,
                            HighlightColor::Cyan,
                            &mut parser.highlights(),
                        );
                        exit
                    } {
                        ParseExit::Complete => {}
                        ParseExit::Cut => {
                            *output = Some(Self {
                                keyword: primary_field,
                                ident: secondary_field_0,
                                generics: secondary_field_1,
                                contract: secondary_field_2,
                                fields: secondary_field_3,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                    }
                    *output = Some(Self {
                        keyword: primary_field,
                        ident: secondary_field_0,
                        generics: secondary_field_1,
                        contract: secondary_field_2,
                        fields: secondary_field_3,
                    });
                    ParseExit::Complete
                }
            }
        }
        fn detect(parser: &impl Tokenizer) -> Detection {
            'detect_fields: {
                match <StructKeyword as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                match <Try<Ident> as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                match <Option<GenericParams> as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                match <Contract as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                match <Try<FramedParams<Braces>> as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                Detection::NotDetected
            }
        }
    }
    impl ParseDesc for Struct {
        fn desc() -> &'static str {
            "a struct declaration"
        }
    }
    #[desc = "an enum declaration"]
    pub struct Enum {
        pub keyword: EnumKeyword,
        #[highlight(HighlightColor::Green)]
        pub ident: Try<Ident>,
        pub generics: Option<GenericParams>,
        pub contract: Contract,
        #[highlight(HighlightColor::Blue)]
        pub variants: Try<FramedParams<Braces>>,
    }
    #[automatically_derived]
    impl ::core::fmt::Debug for Enum {
        #[inline]
        fn fmt(&self, f: &mut ::core::fmt::Formatter) -> ::core::fmt::Result {
            ::core::fmt::Formatter::debug_struct_field5_finish(
                f,
                "Enum",
                "keyword",
                &self.keyword,
                "ident",
                &self.ident,
                "generics",
                &self.generics,
                "contract",
                &self.contract,
                "variants",
                &&self.variants,
            )
        }
    }
    impl OptionParse for Enum {
        fn option_parse(
            parser: &mut impl Tokenizer,
            output: &mut Option<Self>,
        ) -> ParseExit {
            {
                #[allow(unused_labels)]
                'option_parse_fields: {
                    if 'detect_fields: {
                        match <EnumKeyword as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        match <Try<Ident> as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        match <Option<GenericParams> as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        match <Contract as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        match <Try<
                            FramedParams<Braces>,
                        > as OptionParse>::detect(parser) {
                            Detection::Detected => {
                                break 'detect_fields Detection::Detected;
                            }
                            Detection::NotDetected => {
                                break 'detect_fields Detection::NotDetected;
                            }
                            Detection::EmptyDetected => {}
                        }
                        Detection::NotDetected
                    } == Detection::NotDetected
                    {
                        break 'option_parse_fields ParseExit::Complete;
                    }
                    let mut primary_field = None;
                    let primary_field_exit = {
                        let exit = <EnumKeyword as OptionParse>::option_parse(
                            parser,
                            &mut primary_field,
                        );
                        exit
                    };
                    let primary_field = primary_field.unwrap();
                    let mut secondary_field_0 = <Try<Ident> as Parse>::parse_error();
                    let mut secondary_field_1 = <Option<
                        GenericParams,
                    > as Parse>::parse_error();
                    let mut secondary_field_2 = <Contract as Parse>::parse_error();
                    let mut secondary_field_3 = <Try<
                        FramedParams<Braces>,
                    > as Parse>::parse_error();
                    if primary_field_exit == ParseExit::Cut {
                        *output = Some(Self {
                            keyword: primary_field,
                            ident: secondary_field_0,
                            generics: secondary_field_1,
                            contract: secondary_field_2,
                            variants: secondary_field_3,
                        });
                        break 'option_parse_fields ParseExit::Cut;
                    }
                    match {
                        let exit = <Try<
                            Ident,
                        > as Parse>::parse(parser, &mut secondary_field_0);
                        <Try<
                            Ident,
                        > as Highlightable>::highlight(
                            &mut secondary_field_0,
                            HighlightColor::Green,
                            &mut parser.highlights(),
                        );
                        exit
                    } {
                        ParseExit::Complete => {}
                        ParseExit::Cut => {
                            *output = Some(Self {
                                keyword: primary_field,
                                ident: secondary_field_0,
                                generics: secondary_field_1,
                                contract: secondary_field_2,
                                variants: secondary_field_3,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                    }
                    match {
                        let exit = <Option<
                            GenericParams,
                        > as Parse>::parse(parser, &mut secondary_field_1);
                        exit
                    } {
                        ParseExit::Complete => {}
                        ParseExit::Cut => {
                            *output = Some(Self {
                                keyword: primary_field,
                                ident: secondary_field_0,
                                generics: secondary_field_1,
                                contract: secondary_field_2,
                                variants: secondary_field_3,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                    }
                    match {
                        let exit = <Contract as Parse>::parse(
                            parser,
                            &mut secondary_field_2,
                        );
                        exit
                    } {
                        ParseExit::Complete => {}
                        ParseExit::Cut => {
                            *output = Some(Self {
                                keyword: primary_field,
                                ident: secondary_field_0,
                                generics: secondary_field_1,
                                contract: secondary_field_2,
                                variants: secondary_field_3,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                    }
                    match {
                        let exit = <Try<
                            FramedParams<Braces>,
                        > as Parse>::parse(parser, &mut secondary_field_3);
                        <Try<
                            FramedParams<Braces>,
                        > as Highlightable>::highlight(
                            &mut secondary_field_3,
                            HighlightColor::Blue,
                            &mut parser.highlights(),
                        );
                        exit
                    } {
                        ParseExit::Complete => {}
                        ParseExit::Cut => {
                            *output = Some(Self {
                                keyword: primary_field,
                                ident: secondary_field_0,
                                generics: secondary_field_1,
                                contract: secondary_field_2,
                                variants: secondary_field_3,
                            });
                            break 'option_parse_fields ParseExit::Cut;
                        }
                    }
                    *output = Some(Self {
                        keyword: primary_field,
                        ident: secondary_field_0,
                        generics: secondary_field_1,
                        contract: secondary_field_2,
                        variants: secondary_field_3,
                    });
                    ParseExit::Complete
                }
            }
        }
        fn detect(parser: &impl Tokenizer) -> Detection {
            'detect_fields: {
                match <EnumKeyword as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                match <Try<Ident> as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                match <Option<GenericParams> as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                match <Contract as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                match <Try<FramedParams<Braces>> as OptionParse>::detect(parser) {
                    Detection::Detected => break 'detect_fields Detection::Detected,
                    Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                    Detection::EmptyDetected => {}
                }
                Detection::NotDetected
            }
        }
    }
    impl ParseDesc for Enum {
        fn desc() -> &'static str {
            "an enum declaration"
        }
    }
}
pub use attr::*;
pub use block::*;
pub use contract::*;
pub use expr::*;
pub use generics::*;
pub use item::*;
pub use param::*;
pub use type_::*;
pub struct SyntaxTree {
    #[parse_as(Repeated<_>)]
    pub items: Vec<Item>,
    pub leftovers: Leftovers,
}
#[automatically_derived]
impl ::core::fmt::Debug for SyntaxTree {
    #[inline]
    fn fmt(&self, f: &mut ::core::fmt::Formatter) -> ::core::fmt::Result {
        ::core::fmt::Formatter::debug_struct_field2_finish(
            f,
            "SyntaxTree",
            "items",
            &self.items,
            "leftovers",
            &&self.leftovers,
        )
    }
}
#[automatically_derived]
impl ::core::default::Default for SyntaxTree {
    #[inline]
    fn default() -> SyntaxTree {
        SyntaxTree {
            items: ::core::default::Default::default(),
            leftovers: ::core::default::Default::default(),
        }
    }
}
impl OptionParse for SyntaxTree {
    fn option_parse(
        parser: &mut impl Tokenizer,
        output: &mut Option<Self>,
    ) -> ParseExit {
        {
            #[allow(unused_labels)]
            'option_parse_fields: {
                if 'detect_fields: {
                    match <Repeated<_> as OptionParse>::detect(parser) {
                        Detection::Detected => break 'detect_fields Detection::Detected,
                        Detection::NotDetected => {
                            break 'detect_fields Detection::NotDetected;
                        }
                        Detection::EmptyDetected => {}
                    }
                    match <Leftovers as OptionParse>::detect(parser) {
                        Detection::Detected => break 'detect_fields Detection::Detected,
                        Detection::NotDetected => {
                            break 'detect_fields Detection::NotDetected;
                        }
                        Detection::EmptyDetected => {}
                    }
                    Detection::NotDetected
                } == Detection::NotDetected
                {
                    break 'option_parse_fields ParseExit::Complete;
                }
                let mut primary_field = None;
                let primary_field_exit = {
                    let exit = {
                        let mut temp_output = None;
                        let exit = <Repeated<
                            _,
                        > as OptionParse>::option_parse(parser, &mut temp_output);
                        *&mut primary_field = <Repeated<
                            _,
                        > as Into<Vec<Item>>>::into(temp_output);
                        exit
                    };
                    exit
                };
                let primary_field = primary_field.unwrap();
                let mut secondary_field_0 = <Leftovers as Parse>::parse_error();
                if primary_field_exit == ParseExit::Cut {
                    *output = Some(Self {
                        items: primary_field,
                        leftovers: secondary_field_0,
                    });
                    break 'option_parse_fields ParseExit::Cut;
                }
                match {
                    let exit = <Leftovers as Parse>::parse(
                        parser,
                        &mut secondary_field_0,
                    );
                    exit
                } {
                    ParseExit::Complete => {}
                    ParseExit::Cut => {
                        *output = Some(Self {
                            items: primary_field,
                            leftovers: secondary_field_0,
                        });
                        break 'option_parse_fields ParseExit::Cut;
                    }
                }
                *output = Some(Self {
                    items: primary_field,
                    leftovers: secondary_field_0,
                });
                ParseExit::Complete
            }
        }
    }
    fn detect(parser: &impl Tokenizer) -> Detection {
        'detect_fields: {
            match <Repeated<_> as OptionParse>::detect(parser) {
                Detection::Detected => break 'detect_fields Detection::Detected,
                Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                Detection::EmptyDetected => {}
            }
            match <Leftovers as OptionParse>::detect(parser) {
                Detection::Detected => break 'detect_fields Detection::Detected,
                Detection::NotDetected => break 'detect_fields Detection::NotDetected,
                Detection::EmptyDetected => {}
            }
            Detection::NotDetected
        }
    }
}
impl Parse for SyntaxTree {
    fn parse(parser: &mut impl Tokenizer, output: &mut Self) -> ParseExit {
        {
            #[allow(unused_labels)]
            'parse_fields: {
                let mut field_0 = <Repeated<
                    _,
                > as Into<Vec<Item>>>::into(<Repeated<_> as Parse>::parse_error());
                let mut field_1 = <Leftovers as Parse>::parse_error();
                match {
                    let exit = {
                        let mut temp_output = <Repeated<_> as Parse>::parse_error();
                        let exit = <Repeated<
                            _,
                        > as Parse>::parse(parser, &mut temp_output);
                        *&mut field_0 = <Repeated<
                            _,
                        > as Into<Vec<Item>>>::into(temp_output);
                        exit
                    };
                    exit
                } {
                    ParseExit::Complete => {}
                    ParseExit::Cut => {
                        *output = Self {
                            items: field_0,
                            leftovers: field_1,
                        };
                        break 'parse_fields ParseExit::Cut;
                    }
                }
                match {
                    let exit = <Leftovers as Parse>::parse(parser, &mut field_1);
                    exit
                } {
                    ParseExit::Complete => {}
                    ParseExit::Cut => {
                        *output = Self {
                            items: field_0,
                            leftovers: field_1,
                        };
                        break 'parse_fields ParseExit::Cut;
                    }
                }
                *output = Self {
                    items: field_0,
                    leftovers: field_1,
                };
                ParseExit::Complete
            }
        }
    }
    fn parse_error() -> Self {
        Self {
            items: <Repeated<
                _,
            > as Into<Vec<Item>>>::into(<Repeated<_> as Parse>::parse_error()),
            leftovers: <Leftovers as Parse>::parse_error(),
        }
    }
}
#[allow(private_bounds)]
pub trait ParseAstExt: Seal {
    fn parse_ast(self) -> SyntaxTree;
}
trait Seal {}
impl<T: Tokenizer> Seal for T {}
impl<T: Tokenizer> ParseAstExt for T {
    fn parse_ast(self) -> SyntaxTree {
        let mut parser = self;
        let mut output = SyntaxTree::parse_error();
        SyntaxTree::parse(&mut parser, &mut output);
        output
    }
}
