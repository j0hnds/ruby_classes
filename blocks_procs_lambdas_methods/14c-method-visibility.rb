# Let's invent a CloakOfInvisibility
class CloakOfInvisibility

  def public_method
    puts "I am a public method"
  end

  def call_them_all
    public_method
    protected_method
    private_method
  end

  def call_other_guy(other_coi)
    other_coi.public_method
    other_coi.protected_method
    other_coi.private_method
    other_coi.sub_protected_method if other_coi.respond_to?(:sub_protected_method)
  end

  protected

  def protected_method
    puts "I am a protected method"
  end

  private

  def private_method
    puts "I am a private method"
  end

end

# Now let's derive a sub-class of the CloakOfInvisibility
class SubCloakOfInvisibility < CloakOfInvisibility

  def sub_call_them_all
    public_method
    protected_method
    private_method
  end

  protected
 
  def sub_protected_method
    puts "I am sub's protected method"
  end

  private

  def sub_private_method
    puts "I am sub's private method"
  end

end

# Now let's play some games
coi = CloakOfInvisibility.new
scoi = SubCloakOfInvisibility.new

coi.public_method

# => I am a public method

coi.call_them_all

# => I am a public method
# => I am a protected method
# => I am a private method

coi.protected_method

# => protected method 'protected_method' called...

coi.private_method

# => private method 'private_method' called...

scoi.sub_call_them_all

# => I am a public method
# => I am a protected method
# => I am a private method

# Can't call the other guy's private method
coi.call_other_guy(scoi)

# However, nothing is invisible to the send method...
coi.send(:sub_private_method)
