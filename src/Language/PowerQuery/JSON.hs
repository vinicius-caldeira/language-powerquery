{-# LANGUAGE PackageImports #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE FunctionalDependencies #-}

module Language.PowerQuery.JSON where

import "text"  Data.Text (Text)
import "aeson" Data.Aeson
import         Language.PowerQuery.Token
import         Language.PowerQuery.AST

instance ToJSON Token
instance ToJSON Literal
instance ToJSON Identifier
instance ToJSON Keyword
instance ToJSON Operator

instance (ToJSON a) => ToJSON (Document a)
instance (ToJSON a) => ToJSON (Section a)
instance (ToJSON a) => ToJSON (SectionMember a)
instance (ToJSON a) => ToJSON (Expression a)
instance (ToJSON a) => ToJSON (LogicalExpression a)
instance (ToJSON a) => ToJSON (IsExpression a)
instance (ToJSON a) => ToJSON (AsExpression a)
instance (ToJSON a) => ToJSON (EqualityExpression a)
instance (ToJSON a) => ToJSON (RelationalExpression a)
instance (ToJSON a) => ToJSON (ArithmeticExpression a)
instance (ToJSON a) => ToJSON (MetadataExpression a)
instance (ToJSON a) => ToJSON (UnaryExpression a)
instance (ToJSON a) => ToJSON (PrimaryExpression a)
instance (ToJSON a) => ToJSON (LiteralExpression a)
instance (ToJSON a) => ToJSON (IdentifierExpression a)
instance (ToJSON a) => ToJSON (SectionAccessExpression a)
instance (ToJSON a) => ToJSON (ParenthesizedExpression a)
instance (ToJSON a) => ToJSON (NotImplementedExpression a)
instance (ToJSON a) => ToJSON (InvokeExpression a)
instance (ToJSON a) => ToJSON (ListExpression a)
instance (ToJSON a) => ToJSON (Item a)
instance (ToJSON a) => ToJSON (RecordExpression a)
instance (ToJSON a) => ToJSON (Field a)
instance (ToJSON a) => ToJSON (ItemAccessExpression a)
instance (ToJSON a) => ToJSON (FieldAccessExpression a)
instance (ToJSON a) => ToJSON (SelectorList a)
instance (ToJSON a) => ToJSON (FieldSelector a)
instance (ToJSON a) => ToJSON (FunctionExpression a)
instance (ToJSON a) => ToJSON (Parameter a)
instance (ToJSON a) => ToJSON (EachExpression a)
instance (ToJSON a) => ToJSON (LetExpression a)
instance (ToJSON a) => ToJSON (Variable a)
instance (ToJSON a) => ToJSON (IfExpression a)
instance (ToJSON a) => ToJSON (TypeExpression a)
instance (ToJSON a) => ToJSON (Type a)
instance (ToJSON a) => ToJSON (PrimaryType a)
instance (ToJSON a) => ToJSON (FieldSpecification a)
instance (ToJSON a) => ToJSON (ParameterSpecification a)
instance               ToJSON PrimitiveType
instance (ToJSON a) => ToJSON (ErrorRaisingExpression a)
instance (ToJSON a) => ToJSON (ErrorHandlingExpression a)


instance FromJSON Token
instance FromJSON Literal
instance FromJSON Identifier
instance FromJSON Keyword
instance FromJSON Operator

instance (FromJSON a) => FromJSON (Document a)
instance (FromJSON a) => FromJSON (Section a)
instance (FromJSON a) => FromJSON (SectionMember a)
instance (FromJSON a) => FromJSON (Expression a)
instance (FromJSON a) => FromJSON (LogicalExpression a)
instance (FromJSON a) => FromJSON (IsExpression a)
instance (FromJSON a) => FromJSON (AsExpression a)
instance (FromJSON a) => FromJSON (EqualityExpression a)
instance (FromJSON a) => FromJSON (RelationalExpression a)
instance (FromJSON a) => FromJSON (ArithmeticExpression a)
instance (FromJSON a) => FromJSON (MetadataExpression a)
instance (FromJSON a) => FromJSON (UnaryExpression a)
instance (FromJSON a) => FromJSON (PrimaryExpression a)
instance (FromJSON a) => FromJSON (LiteralExpression a)
instance (FromJSON a) => FromJSON (IdentifierExpression a)
instance (FromJSON a) => FromJSON (SectionAccessExpression a)
instance (FromJSON a) => FromJSON (ParenthesizedExpression a)
instance (FromJSON a) => FromJSON (NotImplementedExpression a)
instance (FromJSON a) => FromJSON (InvokeExpression a)
instance (FromJSON a) => FromJSON (ListExpression a)
instance (FromJSON a) => FromJSON (Item a)
instance (FromJSON a) => FromJSON (RecordExpression a)
instance (FromJSON a) => FromJSON (Field a)
instance (FromJSON a) => FromJSON (ItemAccessExpression a)
instance (FromJSON a) => FromJSON (FieldAccessExpression a)
instance (FromJSON a) => FromJSON (SelectorList a)
instance (FromJSON a) => FromJSON (FieldSelector a)
instance (FromJSON a) => FromJSON (FunctionExpression a)
instance (FromJSON a) => FromJSON (Parameter a)
instance (FromJSON a) => FromJSON (EachExpression a)
instance (FromJSON a) => FromJSON (LetExpression a)
instance (FromJSON a) => FromJSON (Variable a)
instance (FromJSON a) => FromJSON (IfExpression a)
instance (FromJSON a) => FromJSON (TypeExpression a)
instance (FromJSON a) => FromJSON (Type a)
instance (FromJSON a) => FromJSON (PrimaryType a)
instance (FromJSON a) => FromJSON (FieldSpecification a)
instance (FromJSON a) => FromJSON (ParameterSpecification a)
instance                 FromJSON PrimitiveType
instance (FromJSON a) => FromJSON (ErrorRaisingExpression a)
instance (FromJSON a) => FromJSON (ErrorHandlingExpression a)